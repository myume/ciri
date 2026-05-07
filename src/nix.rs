use std::{
    collections::{HashMap, HashSet},
    fmt::Display,
};

use anyhow::Context;
use indexmap::IndexMap;
use log::{debug, warn};
use syn::{GenericArgument, Item, ItemEnum, ItemStruct, PathArguments, Type};

use crate::crawler::{ItemMap, TraitsMap};

#[derive(Debug, Clone)]
pub enum NixType {
    String,
    Bool,
    Float,
    List(Box<NixType>),
    NullOr(Box<NixType>),
    Enum(Vec<String>),
    Either(Box<NixType>, Box<NixType>),
    U8,
    U16,
    U32,
    Unsigned,
    I32,
    I16,
    Int,
    AttrTag(IndexMap<String, NixOption>),
    TypeReference(String),
}

#[derive(Debug, Clone)]
pub struct NixOption {
    ty: NixType,
    default: Option<String>,
}

#[derive(Debug, Clone)]
pub struct Submodule {
    options: IndexMap<String, NixOption>,
}

#[derive(Debug, Clone)]
pub enum NixValue {
    Submodule(Submodule),
    Type(NixType),
}

impl Display for NixValue {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            NixValue::Submodule(submodule) => submodule.fmt(f),
            NixValue::Type(nix_type) => nix_type.fmt(f),
        }
    }
}

impl Display for NixType {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{}",
            match self {
                NixType::String => "str".to_string(),
                NixType::Bool => "bool".to_string(),
                NixType::Float => "float".to_string(),
                NixType::List(ty) => {
                    format!("listOf ({})", ty)
                }
                NixType::NullOr(ty) => {
                    format!("nullOr ({})", ty)
                }
                NixType::Enum(variants) => format!(
                    "enum [{}]",
                    variants
                        .iter()
                        .map(|var| format!("\"{}\"", pascal_case_to_hypen(var)))
                        .collect::<Vec<String>>()
                        .join("\n")
                ),
                NixType::U8 => "ints.u8".to_string(),
                NixType::U16 => "ints.u16".to_string(),
                NixType::U32 => "ints.u32".to_string(),
                NixType::I32 => "ints.s32".to_string(),
                NixType::I16 => "ints.s16".to_string(),
                NixType::TypeReference(s) => pascal_case_to_hypen(s),
                NixType::AttrTag(options) => {
                    format!(
                        "attrTag {{
                            {}
                        }}",
                        options
                            .iter()
                            .map(|(k, v)| format!("{} = {};", pascal_case_to_hypen(k), v))
                            .collect::<String>()
                    )
                }
                NixType::Unsigned => "ints.unsigned".to_string(),
                NixType::Either(ty1, ty2) => format!("either {} {}", ty1, ty2),
                NixType::Int => "int".into(),
            }
        )
    }
}

impl Display for NixOption {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "mkOption {{
                    type = {}; 
                    {}
                }}",
            self.ty,
            if let Some(default) = self.default.clone() {
                format!("default = {};", default)
            } else {
                "".into()
            }
        )
    }
}

impl Display for Submodule {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(
            f,
            "submodule {{
                options = {{
                    {}
                }};
            }}",
            self.options
                .iter()
                .map(|(name, opt)| format!("{} = {};", pascal_case_to_hypen(name), opt))
                .collect::<String>(),
        )
    }
}

impl NixOption {
    pub fn new(ty: NixType) -> NixOption {
        NixOption {
            default: match ty {
                NixType::List(_) => Some("[]".into()),
                _ => None,
            },
            ty,
        }
    }
}

type NixDeclarations = IndexMap<String, NixValue>;
type NixTransformPass<'a> = Box<dyn Fn(NixDeclarations) -> NixDeclarations + 'a>;

enum Filter {
    Include(HashSet<String>),
    Exclude(HashSet<String>),
}

pub struct NixTypeParser {
    structs: ItemMap,
    traits_map: TraitsMap,
    visited: HashSet<String>,
    null_overrides: HashMap<String, Filter>,
    type_overrides: HashMap<String, NixType>,
}

impl NixTypeParser {
    pub fn new(structs: ItemMap, traits_map: TraitsMap) -> NixTypeParser {
        let mut type_overrides: HashMap<String, NixType> = traits_map
            .iter()
            .filter_map(|(name, traits)| {
                if traits.contains("FromStr")
                    && let Some(item) = structs.get(name)
                {
                    match item {
                        Item::Enum(enum_item) => {
                            if enum_item.variants.iter().any(|ele| !ele.fields.is_empty()) {
                                return Some((name.clone(), NixType::String));
                            }
                        }
                        _ => return Some((name.clone(), NixType::String)),
                    };
                }
                None
            })
            .collect();

        type_overrides.extend([(
            "FloatOrInt".into(),
            NixType::Either(Box::new(NixType::Float), Box::new(NixType::Int)),
        )]);

        NixTypeParser {
            structs,
            traits_map,
            visited: HashSet::new(),
            null_overrides: HashMap::from([(
                "Bind".into(),
                Filter::Exclude(HashSet::from(["key".into(), "action".into()])),
            )]),
            type_overrides,
        }
    }

    pub fn generate_config_type(&mut self) -> anyhow::Result<String> {
        self.visited.clear();

        let mut submodules = self.item_to_submodules(
            &self
                .structs
                .get("Config")
                .context("missing root config struct")?
                .clone(),
        )?;

        let transformations: [NixTransformPass; _] = [
            Box::new(NixTypeParser::collapse_wrapped_types),
            Box::new(|input| self.apply_nullable(input)),
        ];
        for transform in transformations {
            submodules = transform(submodules);
        }

        Ok(format!(
            "{{lib, ...}}:
            let
                inherit (lib.options) mkOption;
            in
            with lib.types; rec {{
                {}
            }}",
            submodules
                .into_iter()
                .map(|(name, module)| format!("{} = {};\n", pascal_case_to_hypen(&name), module))
                .collect::<String>()
        ))
    }

    fn apply_nullable(&self, input: NixDeclarations) -> NixDeclarations {
        let can_apply_null =
            |ty: &NixType| !matches!(ty, NixType::NullOr(_)) && !matches!(ty, NixType::List(_));

        input
            .into_iter()
            .map(|(k, mut v)| {
                if let Some(traits) = self.traits_map.get(&k)
                    && traits.contains("Default")
                    && let NixValue::Submodule(ref mut submodule) = v
                {
                    for opt in submodule.options.values_mut() {
                        if can_apply_null(&opt.ty) {
                            opt.ty = NixType::NullOr(Box::new(opt.ty.clone()));
                        }
                    }
                }
                (k, v)
            })
            .map(|(k, mut v)| {
                if let Some(nullable) = self.null_overrides.get(&k)
                    && let NixValue::Submodule(ref mut submodule) = v
                {
                    for (opt_name, opt) in submodule.options.iter_mut() {
                        let names = match nullable {
                            Filter::Include(hash_set) => hash_set,
                            Filter::Exclude(hash_set) => hash_set,
                        };

                        if ((matches!(nullable, Filter::Include(_)) && names.contains(opt_name))
                            || (matches!(nullable, Filter::Exclude(_))
                                && !names.contains(opt_name)))
                            && can_apply_null(&opt.ty)
                        {
                            opt.ty = NixType::NullOr(Box::new(opt.ty.clone()));
                        }
                    }
                }
                (k, v)
            })
            .collect()
    }

    fn collapse_wrapped_types(input: NixDeclarations) -> NixDeclarations {
        let mut collapsed_types = HashSet::new();
        input
            .into_iter()
            .map(|(k, v)| {
                if let NixValue::Submodule(ref sub) = v
                    && sub.options.len() == 1
                    && sub.options.contains_key(&k)
                {
                    let opt = sub.options.get(&k).expect("opt to exist").clone();
                    collapsed_types.insert(k.clone());
                    (k, NixValue::Type(opt.ty))
                } else {
                    (k, v)
                }
            })
            .collect::<NixDeclarations>()
            .into_iter()
            .map(|(k, mut v)| {
                if let NixValue::Submodule(ref mut sub) = v {
                    for opt in sub.options.values_mut() {
                        if let NixType::TypeReference(ref inner) = opt.ty
                            && collapsed_types.contains(inner)
                        {
                            opt.ty = NixType::TypeReference(inner.clone());
                        }
                    }
                }
                (k, v)
            })
            .collect()
    }

    fn item_to_submodules(&mut self, root: &Item) -> anyhow::Result<NixDeclarations> {
        let (mut decl, deps) = match root {
            Item::Enum(item_enum) => self.enum_to_option(item_enum),
            Item::Struct(item_struct) => self.struct_to_submodules(item_struct),
            _ => unreachable!("unhandled item {:#?}", root),
        }?;

        for dep in deps {
            if let Some(submodule) = self.structs.get(&dep) {
                decl.extend(self.item_to_submodules(&submodule.clone())?);
            } else {
                warn!("unhandled dependency {dep}");
            }
        }

        Ok(decl)
    }

    fn enum_to_option(
        &mut self,
        root: &ItemEnum,
    ) -> anyhow::Result<(NixDeclarations, Vec<String>)> {
        let mut decl = IndexMap::new();
        let mut deps = Vec::new();
        let enum_name = root.ident.to_string();
        if self.visited.contains(&enum_name) {
            return Ok((decl, deps));
        }
        self.visited.insert(enum_name);

        let is_data_enum = root.variants.iter().any(|ele| !ele.fields.is_empty());
        let ty = if is_data_enum {
            let mut options = IndexMap::new();

            for var in root.variants.iter() {
                for field in var.fields.iter() {
                    let (ty, ty_deps) = self.primitive_to_nix(&field.ty);
                    deps.extend(ty_deps);
                    options.insert(
                        field
                            .ident
                            .clone()
                            .map(|ident| ident.to_string())
                            .unwrap_or(var.ident.to_string()),
                        NixOption::new(ty),
                    );
                }

                if var.fields.is_empty() {
                    options.insert(var.ident.to_string(), NixOption::new(NixType::Bool));
                }
            }

            NixType::AttrTag(options)
        } else {
            let variants = root
                .variants
                .iter()
                .map(|var| var.ident.to_string())
                .collect();
            NixType::Enum(variants)
        };

        decl.insert(root.ident.to_string(), NixValue::Type(ty));

        Ok((decl, deps))
    }

    fn struct_to_submodules(
        &mut self,
        root: &ItemStruct,
    ) -> anyhow::Result<(NixDeclarations, Vec<String>)> {
        let mut nix_values = IndexMap::new();
        let mut deps = Vec::new();

        let mut submodule = Submodule {
            options: IndexMap::new(),
        };

        let submodule_name = root.ident.to_string();
        if self.visited.contains(&submodule_name) {
            return Ok((nix_values, deps));
        }

        self.visited.insert(submodule_name.clone());

        for field in &root.fields {
            let syn::Type::Path(type_path) = &field.ty else {
                unreachable!("should only have type paths");
            };

            let segments = &type_path.path.segments;
            let type_ident = &segments.last().unwrap().ident;
            let field_ident = field.ident.as_ref().unwrap_or(&root.ident).to_string();

            let ty = if self.structs.contains_key(&type_ident.to_string())
                && !self.type_overrides.contains_key(&type_ident.to_string())
            {
                deps.push(type_ident.to_string());
                NixType::TypeReference(type_ident.to_string())
            } else {
                let (ty, ty_deps) = self.primitive_to_nix(&field.ty);
                deps.extend(ty_deps);
                ty
            };

            submodule
                .options
                .insert(field_ident.to_string(), NixOption::new(ty));
        }
        nix_values.insert(submodule_name, NixValue::Submodule(submodule));

        Ok((nix_values, deps))
    }

    fn primitive_to_nix(&self, ty: &Type) -> (NixType, Vec<String>) {
        let mut deps = Vec::new();
        let Type::Path(path_type) = ty else {
            unreachable!("unhandled type {:#?}", ty);
        };

        let head = path_type
            .path
            .segments
            .first()
            .expect("missing head of path");

        let ty_ident = head.ident.to_string();

        if let Some(val) = self.type_overrides.get(&ty_ident) {
            debug!("applying overrides for {}", &ty_ident);
            return (val.clone(), deps);
        }

        let ty = match ty_ident.as_str() {
            "String" | "PathBuf" | "Regex" => NixType::String,
            "i32" => NixType::I32,
            "i16" => NixType::I16,
            "u64" | "usize" => NixType::Unsigned,
            "u32" | "Duration" => NixType::U32,
            "u16" => NixType::U16,
            "u8" => NixType::U8,
            "bool" => NixType::Bool,
            "f32" => NixType::Float,
            "f64" => NixType::Float,
            "Option" | "Vec" => {
                if let PathArguments::AngleBracketed(ref arg) = head.arguments
                    && let GenericArgument::Type(inner_ty) =
                        arg.args.first().expect("missing type in vec")
                {
                    let (ty, inner_deps) = self.primitive_to_nix(inner_ty);
                    deps.extend(inner_deps);
                    let inner_nix = Box::new(ty);
                    if ty_ident == "Option" {
                        NixType::NullOr(inner_nix)
                    } else {
                        NixType::List(inner_nix)
                    }
                } else {
                    unreachable!("unhandled field type {:?}", ty);
                }
            }

            ty => {
                deps.push(ty.into());
                NixType::TypeReference(ty.into())
            }
        };

        (ty, deps)
    }
}

fn pascal_case_to_hypen(s: &str) -> String {
    let mut chars = vec![];
    for char in s.chars() {
        if !chars.is_empty() && char.is_uppercase() {
            chars.push('-');
        }
        chars.push(char);
    }
    chars
        .into_iter()
        .collect::<String>()
        .to_lowercase()
        .replace("_", "-")
}
