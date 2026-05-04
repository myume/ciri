use std::{collections::HashSet, fmt::Display, vec};

use anyhow::Context;
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

pub enum NixEntry {
    Submodule(Submodule),
    Opt(NixOption),
}

impl Display for NixEntry {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            NixEntry::Submodule(submodule) => submodule.fmt(f),
            NixEntry::Opt(nix_option) => nix_option.fmt(f),
        }
    }
}

impl Display for NixType {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "lib.types.{}",
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
                NixType::Submodule(s) => format!("submodule {s}"),
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
            "{} = {{
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

pub fn generate_config_type(structs: &ItemMap) -> anyhow::Result<String> {
    let config = structs
        .get("Config")
        .context("missing root config struct")?;

    let submodules = item_to_submodules(config, structs, &mut HashSet::new())?;

    Ok(format!(
        "{{lib, ...}}:
let
inherit (lib.options) mkOption;
in
rec {{
{}
}}",
        submodules
            .iter()
            .map(|module| module.to_string())
            .collect::<String>()
    ))
}

fn item_to_submodules(
    root: &Item,
    structs: &ItemMap,
    visited: &mut HashSet<String>,
) -> anyhow::Result<Vec<NixEntry>> {
    match root {
        Item::Enum(item_enum) => enum_to_option(item_enum, visited),
        Item::Struct(item_struct) => struct_to_submodules(item_struct, structs, visited),
        _ => unreachable!("unhandled item {:#?}", root),
    }
}

fn enum_to_option(root: &ItemEnum, visited: &mut HashSet<String>) -> anyhow::Result<Vec<NixEntry>> {
    let enum_name = root.ident.to_string();
    if visited.contains(&enum_name) {
        return Ok(vec![]);
    }
    visited.insert(enum_name);

    // TODO: figure out how to handle wrapped values
    // root.variants.iter().for_each(|ele| {
    //     assert!(
    //         ele.fields.is_empty(),
    //         "\"{}\" enum contains fields in \"{}\" variant",
    //         root.ident,
    //         ele.ident
    //     )
    // });

    let variants = root
        .variants
        .iter()
        .map(|var| var.ident.to_string().to_lowercase())
        .collect();

    let op = NixEntry::Opt(NixOption::new(
        root.ident.to_string(),
        NixType::Enum(variants),
    ));

    Ok(vec![op])
}

fn struct_to_submodules(
    root: &ItemStruct,
    structs: &ItemMap,
    visited: &mut HashSet<String>,
) -> anyhow::Result<Vec<NixEntry>> {
    let mut submodules = Vec::new();

    let mut submodule = Submodule {
        name: root.ident.to_string(),
        options: Vec::new(),
    };

    if visited.contains(&submodule.name) {
        return Ok(vec![]);
    }

    visited.insert(submodule.name.clone());

    for field in &root.fields {
        let syn::Type::Path(type_path) = &field.ty else {
            unreachable!("should only have type paths");
        };

        let segments = &type_path.path.segments;
        let type_ident = &segments.first().unwrap().ident;

        let field_ident = field.ident.as_ref().unwrap_or(&root.ident).to_string();
        let option = if let Some(submodule) = structs.get(&type_ident.to_string()) {
            submodules.extend(item_to_submodules(submodule, structs, visited)?);
            NixOption::new(field_ident, NixType::Submodule(type_ident.to_string()))
        } else {
            let (ty, deps) = primitive_to_nix(&field.ty);
            for dep in deps {
                if let Some(submodule) = structs.get(&dep) {
                    submodules.extend(item_to_submodules(submodule, structs, visited)?);
                } else {
                    eprintln!("[WARN] unhandled dep {dep} for {field_ident}");
                }
            }
            NixOption::new(field_ident, ty)
        };
        submodule.options.push(option);
    }

    submodules.push(NixEntry::Submodule(submodule));

    Ok(submodules)
}

fn primitive_to_nix(ty: &Type) -> (NixType, Vec<String>) {
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
        "u32" => NixType::U32,
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
                let (ty, inner_deps) = primitive_to_nix(inner_ty);
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
