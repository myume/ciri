use std::{
    collections::{HashMap, HashSet},
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
    I32,
    I16,
    Submodule(String),
}

#[derive(Debug, Clone)]
pub struct NixOption {
    name: String,
    ty: NixType,
}

#[derive(Debug, Clone)]
pub struct Submodule {
    name: String,
    options: Vec<NixOption>,
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
                NixType::Enum(variants) => format!("enum [{:?}]", variants.join(" ")),
                NixType::U8 => "ints.u8".to_string(),
                NixType::U16 => "ints.u16".to_string(),
                NixType::U32 => "ints.u32".to_string(),
                NixType::I32 => "ints.s32".to_string(),
                NixType::I16 => "ints.s16".to_string(),
                NixType::Submodule(s) => s.to_string(),
            }
        )
    }
}

impl Display for NixOption {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{} = mkOption {{
type = {};
}};",
            self.name, self.ty
        )
    }
}

impl Display for Submodule {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(
            f,
            "{} = submodule {{
options = {{
    {}
}};
}};",
            self.name,
            self.options
                .iter()
                .map(|op| op.to_string())
                .collect::<String>()
        )
    }
}

impl NixOption {
    pub fn new(name: String, ty: NixType) -> NixOption {
        NixOption { name, ty }
    }
}

pub struct NixTypeParser {
    structs: ItemMap,
    visited: HashSet<String>,
    overrides: HashMap<String, NixValue>,
}

impl NixTypeParser {
    pub fn new(structs: ItemMap) -> NixTypeParser {
        NixTypeParser {
            structs,
            visited: HashSet::new(),
            overrides: HashMap::from([]),
        }
    }

    pub fn generate_config_type(&mut self) -> anyhow::Result<String> {
        self.visited.clear();

        let submodules = self.item_to_submodules(
            &self
                .structs
                .get("Config")
                .context("missing root config struct")?
                .clone(),
        )?;

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
                .map(|module| module.to_string())
                .collect::<String>()
        ))
    }

    fn item_to_submodules(&mut self, root: &Item) -> anyhow::Result<Vec<NixValue>> {
        match root {
            Item::Enum(item_enum) => self.enum_to_option(item_enum),
            Item::Struct(item_struct) => self.struct_to_submodules(item_struct),
            _ => unreachable!("unhandled item {:#?}", root),
        }
    }

    fn enum_to_option(&mut self, root: &ItemEnum) -> anyhow::Result<Vec<NixValue>> {
        let enum_name = root.ident.to_string();
        if self.visited.contains(&enum_name) {
            return Ok(vec![]);
        }
        self.visited.insert(enum_name);

        // TODO: figure out how to handle wrapped values
        root.variants.iter().for_each(|ele| {
            if !ele.fields.is_empty() {
                warn!(
                    "\"{}\" enum contains field in \"{}\" variant",
                    root.ident, ele.ident
                )
            }
        });

        let variants = root
            .variants
            .iter()
            .map(|var| var.ident.to_string().to_lowercase())
            .collect();

        let op = NixValue::Opt(NixOption::new(
            root.ident.to_string(),
            NixType::Enum(variants),
        ));

        Ok(vec![op])
    }

    fn struct_to_submodules(&mut self, root: &ItemStruct) -> anyhow::Result<Vec<NixValue>> {
        let mut nix_values = Vec::new();

        let mut submodule = Submodule {
            name: root.ident.to_string(),
            options: Vec::new(),
        };

        if self.visited.contains(&submodule.name) {
            return Ok(vec![]);
        }

        self.visited.insert(submodule.name.clone());

        if let Some(val) = self.overrides.get(&root.ident.to_string()) {
            debug!("applying overrides for {}", &root.ident);
            return Ok(vec![val.clone()]);
        }

        for field in &root.fields {
            let syn::Type::Path(type_path) = &field.ty else {
                unreachable!("should only have type paths");
            };

            let segments = &type_path.path.segments;
            let type_ident = &segments.first().unwrap().ident;

            let field_ident = field.ident.as_ref().unwrap_or(&root.ident).to_string();

            let option = if let Some(submodule) = self.structs.get(&type_ident.to_string()) {
                nix_values.extend(self.item_to_submodules(&submodule.clone())?);
                NixOption::new(field_ident, NixType::Submodule(type_ident.to_string()))
            } else {
                let (ty, deps) = self.primitive_to_nix(&field.ty);
                for dep in deps {
                    if let Some(submodule) = self.structs.get(&dep) {
                        nix_values.extend(self.item_to_submodules(&submodule.clone())?);
                    } else {
                        warn!("unhandled dep {dep} for {field_ident}");
                    }
                }
                NixOption::new(field_ident, ty)
            };
            submodule.options.push(option);
        }

        nix_values.push(NixValue::Submodule(submodule));

        Ok(nix_values)
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
        let ty = match ty_ident.as_str() {
            "String" | "PathBuf" | "Regex" => NixType::String,
            "i32" => NixType::I32,
            "i16" => NixType::I16,
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
