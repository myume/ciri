use std::{
    collections::{BTreeMap, HashSet},
    fmt::Display,
    vec,
};

use anyhow::Context;
use log::{debug, warn};
use syn::{GenericArgument, Item, ItemEnum, ItemStruct, PathArguments, Type};

use crate::crawler::ItemMap;

#[derive(Debug, Clone)]
pub enum NixType {
    String,
    Bool,
    Float,
    List(Box<NixType>),
    NullOr(Box<NixType>),
    Enum(Vec<String>),
    U8,
    U16,
    U32,
    Unsigned,
    I32,
    I16,
    AttrTag(BTreeMap<String, NixOption>),
    Submodule(String),
    Reference(String),
}

#[derive(Debug, Clone)]
pub struct NixOption {
    ty: NixType,
    default: Option<String>,
}

#[derive(Debug, Clone)]
pub struct Submodule {
    options: BTreeMap<String, NixOption>,
}

#[derive(Debug, Clone)]
pub enum NixValue {
    Submodule(Submodule),
    Opt(NixOption),
}

impl Display for NixValue {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            NixValue::Submodule(submodule) => submodule.fmt(f),
            NixValue::Opt(nix_option) => nix_option.fmt(f),
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
                    let ty = if let NixType::Submodule(sub) = ty.as_ref() {
                        sub.to_string()
                    } else {
                        ty.to_string()
                    };
                    format!("listOf {}", ty)
                }
                NixType::NullOr(ty) => {
                    let ty = if let NixType::Submodule(sub) = ty.as_ref() {
                        sub.to_string()
                    } else {
                        ty.to_string()
                    };
                    format!("nullOr {}", ty)
                }
                NixType::Enum(variants) => format!(
                    "enum [{}]",
                    variants
                        .iter()
                        .map(|var| format!("\"{var}\""))
                        .collect::<Vec<String>>()
                        .join("\n")
                ),
                NixType::U8 => "ints.u8".to_string(),
                NixType::U16 => "ints.u16".to_string(),
                NixType::U32 => "ints.u32".to_string(),
                NixType::I32 => "ints.s32".to_string(),
                NixType::I16 => "ints.s16".to_string(),
                NixType::Submodule(s) => s.to_string(),
                NixType::Reference(_) => unreachable!("should be handled in option"),
                NixType::AttrTag(options) => {
                    format!(
                        "attrsTag {{
                            {}
                        }}",
                        options
                            .iter()
                            .map(|(k, v)| format!("{} = {};", k, v))
                            .collect::<String>()
                    )
                }
                NixType::Unsigned => "ints.unsigned".to_string(),
            }
        )
    }
}

impl Display for NixOption {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match &self.ty {
            NixType::Reference(s) => write!(f, "{s}"),
            ty => write!(
                f,
                "mkOption {{
                    type = {}; 
                    {}
                }}",
                ty,
                if let Some(default) = self.default.clone() {
                    format!("default = {};", default)
                } else {
                    "".into()
                }
            ),
        }
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
                .map(|(name, opt)| format!("{} = {};", name, opt))
                .collect::<String>(),
        )
    }
}

impl NixOption {
    pub fn new(ty: NixType) -> NixOption {
        NixOption {
            default: match ty {
                NixType::List(_) => Some("[]".into()),
                NixType::Submodule(_) => Some("{}".into()),
                _ => None,
            },
            ty,
        }
    }
}

type NixDeclarations = BTreeMap<String, NixValue>;

pub struct NixTypeParser {
    structs: ItemMap,
    visited: HashSet<String>,
    overrides: BTreeMap<String, NixType>,
}

impl NixTypeParser {
    pub fn new(structs: ItemMap) -> NixTypeParser {
        NixTypeParser {
            structs,
            visited: HashSet::new(),
            overrides: BTreeMap::from([(
                "Modifiers".into(),
                NixType::Enum(vec![
                    "ctrl".into(),
                    "shift".into(),
                    "alt".into(),
                    "super".into(),
                    "mod".into(),
                    "iso_level3_shift".into(),
                    "iso_level5_shift".into(),
                ]),
            )]),
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

        let transformations = [NixTypeParser::collapse_wrapped_types];
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
                .iter()
                .map(|(name, module)| format!("{} = {};\n", name, module))
                .collect::<String>()
        ))
    }

    pub fn collapse_wrapped_types(input: NixDeclarations) -> NixDeclarations {
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
                    (k, NixValue::Opt(opt))
                } else {
                    (k, v)
                }
            })
            .collect::<NixDeclarations>()
            .into_iter()
            .map(|(k, mut v)| {
                if let NixValue::Submodule(ref mut sub) = v {
                    for opt in sub.options.values_mut() {
                        if let NixType::Submodule(ref inner) = opt.ty
                            && collapsed_types.contains(inner)
                        {
                            opt.ty = NixType::Reference(inner.clone());
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
        let mut decl = BTreeMap::new();
        let mut deps = Vec::new();
        let enum_name = root.ident.to_string();
        if self.visited.contains(&enum_name) {
            return Ok((decl, deps));
        }
        self.visited.insert(enum_name);

        let is_data_enum = root.variants.iter().any(|ele| !ele.fields.is_empty());
        let opt = if is_data_enum {
            warn!("field in {} contained data", root.ident);
            let mut options = BTreeMap::new();
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
            NixOption::new(NixType::AttrTag(options))
        } else {
            let variants = root
                .variants
                .iter()
                .map(|var| var.ident.to_string().to_lowercase())
                .collect();
            NixOption::new(NixType::Enum(variants))
        };

        decl.insert(root.ident.to_string(), NixValue::Opt(opt));

        Ok((decl, deps))
    }

    fn struct_to_submodules(
        &mut self,
        root: &ItemStruct,
    ) -> anyhow::Result<(NixDeclarations, Vec<String>)> {
        let mut nix_values = BTreeMap::new();
        let mut deps = Vec::new();

        let mut submodule = Submodule {
            options: BTreeMap::new(),
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

            let option = if let Some(submodule) = self.structs.get(&type_ident.to_string()) {
                let sub = submodule.clone();
                nix_values.extend(self.item_to_submodules(&sub)?);
                let name = type_ident.to_string();
                let ty = if matches!(&sub, Item::Enum(_)) {
                    NixType::Reference(name)
                } else {
                    NixType::Submodule(name)
                };
                NixOption::new(ty)
            } else {
                let (ty, ty_deps) = self.primitive_to_nix(&field.ty);
                deps.extend(ty_deps);

                NixOption::new(ty)
            };
            submodule.options.insert(field_ident.to_string(), option);
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

        if let Some(val) = self.overrides.get(&ty_ident) {
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
            "FloatOrInt" => NixType::Float,
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
                NixType::Submodule(ty.into())
            }
        };

        (ty, deps)
    }
}
