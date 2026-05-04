use std::{collections::HashSet, fmt::Display, vec};

use anyhow::Context;
use syn::{Ident, Item, ItemStruct};

use crate::crawler::ItemMap;

#[derive(Debug, Clone)]
pub enum NixType {
    String,
    Bool,
    Integer,
    Float,
    List,
    NullOr,
    Enum,
    U8,
    U16,
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

impl Display for NixType {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "lib.types.{}",
            match self {
                NixType::String => "str".to_string(),
                NixType::Bool => "bool".to_string(),
                NixType::Integer => "int".to_string(),
                NixType::Float => "float".to_string(),
                NixType::List => "listOf".to_string(),
                NixType::NullOr => "nullOr".to_string(),
                NixType::Enum => "enum".to_string(),
                NixType::U8 => "ints.u8".to_string(),
                NixType::U16 => "ints.u16".to_string(),
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
) -> anyhow::Result<Vec<Submodule>> {
    match root {
        Item::Enum(item_enum) => Ok(vec![]),
        Item::Struct(item_struct) => struct_to_submodules(item_struct, structs, visited),
        _ => unreachable!("unhandled item {:#?}", root),
    }
}

fn struct_to_submodules(
    root: &ItemStruct,
    structs: &ItemMap,
    visited: &mut HashSet<String>,
) -> anyhow::Result<Vec<Submodule>> {
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
        let type_ident = &segments[0].ident;

        let field_ident = field.ident.as_ref().unwrap_or(&root.ident);
        let option = if let Some(submodule) = structs.get(&type_ident.to_string()) {
            submodules.extend(item_to_submodules(submodule, structs, visited)?);
            NixOption::new(
                field_ident.to_string(),
                NixType::Submodule(type_ident.to_string()),
            )
        } else {
            primitive_to_nix(field_ident, type_ident)
        };
        submodule.options.push(option);
    }

    submodules.push(submodule);

    Ok(submodules)
}

fn primitive_to_nix(field_ident: &Ident, type_ident: &Ident) -> NixOption {
    let ty = match type_ident.to_string().as_str() {
        "String" => NixType::String,
        "Option" => NixType::NullOr,
        "u16" => NixType::U16,
        "u8" => NixType::U8,
        "bool" => NixType::Bool,
        "f32" => NixType::Float,
        "f64" => NixType::Float,
        "FloatOrInt" => NixType::Float,
        "Vec" => NixType::List,
        ty => unreachable!(
            "unhandled item type \"{}\" for {}",
            ty,
            field_ident.to_string()
        ),
    };

    NixOption::new(field_ident.to_string(), ty)
}
