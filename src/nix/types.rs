use std::{collections::HashSet, fmt::Display, path::Path};

use anyhow::Context;
use indexmap::IndexMap;
use log::{debug, error, trace};
use regex::Regex;
use syn::{Attribute, GenericArgument, Item, ItemEnum, ItemStruct, Meta, PathArguments, Type};

use crate::{
    crawler::{ItemMap, TraitsMap},
    nix::{
        NixDeclarations, NixOption, NixType, Submodule, docs::DocInjector, json_to_nix,
        overrides::Overrides,
    },
};

pub struct NixConfigTypes(NixDeclarations);

impl NixConfigTypes {
    pub fn inner(&self) -> &NixDeclarations {
        &self.0
    }

    pub fn as_file(&self) -> String {
        format!(
            "{{lib, ...}}:
            let
                inherit (lib.options) mkOption;
            in
            with lib.types; rec {{
                {}
            }}",
            self.0
                .iter()
                .map(|(name, module)| format!("{} = {};\n", name, module))
                .collect::<String>()
        )
    }
}

type NixTransformPass<'a> = Box<dyn Fn(NixDeclarations) -> NixDeclarations + 'a>;

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
                        .map(|var| format!("\"{}\"", var))
                        .collect::<Vec<String>>()
                        .join("\n")
                ),
                NixType::U8 => "ints.u8".to_string(),
                NixType::U16 => "ints.u16".to_string(),
                NixType::U32 => "ints.u32".to_string(),
                NixType::I32 => "ints.s32".to_string(),
                NixType::I16 => "ints.s16".to_string(),
                NixType::TypeReference(s) => s.clone(),
                NixType::AttrTag(options) => {
                    format!(
                        "attrTag {{
                            {}
                        }}",
                        options
                            .iter()
                            .map(|(k, v)| format!("{} = {};", k, v))
                            .collect::<String>()
                    )
                }
                NixType::Unsigned => "ints.unsigned".to_string(),
                NixType::Either(ty1, ty2) => format!("either {} {}", ty1, ty2),
                NixType::Int => "int".into(),
                NixType::Submodule(submodule) => submodule.to_string(),
                NixType::OneOf(nix_types) => format!(
                    "oneOf [{}]",
                    nix_types
                        .iter()
                        .map(|ty| format!("({})\n", ty))
                        .collect::<String>()
                ),
            }
        )
    }
}

impl Display for NixOption {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "mkOption {{
                {}
            }}",
            [
                Some(format!("type = {};", self.ty)),
                self.desc
                    .clone()
                    .map(|desc| format!("description = \"{}\";", desc)),
                self.default
                    .clone()
                    .map(|default| format!("default = {};", default)),
                self.example
                    .clone()
                    .map(|ex| format!("example = {};", json_to_nix(ex)))
            ]
            .into_iter()
            .flatten()
            .collect::<Vec<String>>()
            .join("\n"),
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
                .map(|(name, opt)| format!("{} = {};", name, opt))
                .collect::<String>(),
        )
    }
}

pub struct NixTypeParser {
    structs: ItemMap,
    visited: HashSet<String>,
    overrides: Overrides,
    docs: DocInjector,
}

impl NixTypeParser {
    pub fn new(
        docs_path: &Path,
        structs: ItemMap,
        traits_map: &TraitsMap,
    ) -> anyhow::Result<NixTypeParser> {
        Ok(NixTypeParser {
            overrides: Overrides::new(&structs, traits_map),
            structs,
            visited: HashSet::new(),
            docs: DocInjector::new(docs_path)?,
        })
    }

    pub fn generate_types(&mut self) -> anyhow::Result<NixConfigTypes> {
        self.visited.clear();

        let mut submodules = self.item_to_nix(
            &self
                .structs
                .get("Config")
                .context("missing root config struct")?
                .clone(),
        )?;

        let extra_deps: Vec<_> = self
            .overrides
            .option_overrides
            .values()
            .map(|op| op.ty.innermost_type())
            .filter_map(|ty| {
                let NixType::TypeReference(ty) = ty else {
                    return None;
                };
                Some(ty)
            })
            .collect();

        for dep in extra_deps {
            submodules.extend(
                self.item_to_nix(
                    &self
                        .structs
                        .get(&dep)
                        .context(format!("missing struct {} from niri config", dep))?
                        .clone(),
                )?,
            );
        }

        // the order of these matter
        let transformations: [NixTransformPass; _] = [
            Box::new(NixTypeParser::collapse_wrapped_types),
            Box::new(|input| self.overrides.apply_nullable(input)),
            Box::new(NixTypeParser::normalize_names),
            Box::new(|input| self.docs.inject_docs(input)),
        ];
        for transform in transformations {
            submodules = transform(submodules);
        }

        Ok(NixConfigTypes(submodules))
    }

    fn normalize_type(ty: NixType) -> NixType {
        match ty {
            NixType::List(inner) => NixType::list(NixTypeParser::normalize_type(*inner)),
            NixType::OneOf(tys) => {
                NixType::one_of(tys.into_iter().map(NixTypeParser::normalize_type).collect())
            }
            NixType::NullOr(inner) => NixType::null(NixTypeParser::normalize_type(*inner)),
            NixType::Either(left, right) => NixType::either(
                NixTypeParser::normalize_type(*left),
                NixTypeParser::normalize_type(*right),
            ),
            NixType::Enum(items) => {
                NixType::Enum(items.iter().map(|item| normalize_name(item)).collect())
            }
            NixType::AttrTag(index_map) => {
                let options = index_map
                    .into_iter()
                    .map(|(name, mut opt)| {
                        opt.ty = NixTypeParser::normalize_type(opt.ty);
                        (normalize_name(&name), opt)
                    })
                    .collect();
                NixType::AttrTag(options)
            }
            NixType::Submodule(submodule) => {
                let options = submodule
                    .options
                    .into_iter()
                    .map(|(name, mut opt)| {
                        opt.ty = NixTypeParser::normalize_type(opt.ty);
                        (normalize_name(&name), opt)
                    })
                    .collect();
                NixType::Submodule(Submodule { options })
            }
            NixType::TypeReference(ty) => NixType::TypeReference(normalize_name(&ty)),
            ty => ty,
        }
    }

    fn normalize_names(input: NixDeclarations) -> NixDeclarations {
        input
            .into_iter()
            .map(|(k, ty)| (normalize_name(&k), NixTypeParser::normalize_type(ty)))
            .collect()
    }

    fn collapse_wrapped_types(input: NixDeclarations) -> NixDeclarations {
        let mut collapsed_types = HashSet::new();
        input
            .into_iter()
            .map(|(k, v)| {
                if let NixType::Submodule(ref sub) = v
                    && sub.options.len() == 1
                    && sub.options.contains_key(&k)
                {
                    let opt = sub.options.get(&k).expect("opt to exist").clone();
                    collapsed_types.insert(k.clone());
                    (k, opt.ty)
                } else {
                    (k, v)
                }
            })
            .collect::<NixDeclarations>()
            .into_iter()
            .map(|(k, mut v)| {
                if let NixType::Submodule(ref mut sub) = v {
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

    fn item_to_nix(&mut self, root: &Item) -> anyhow::Result<NixDeclarations> {
        let (mut decl, deps) = match root {
            Item::Enum(item_enum) => self.enum_to_option(item_enum),
            Item::Struct(item_struct) => self.struct_to_submodules(item_struct),
            _ => unreachable!("unhandled item {:#?}", root),
        }?;

        for dep in deps {
            if let Some(submodule) = self.structs.get(&dep) {
                decl.extend(self.item_to_nix(&submodule.clone())?);
            } else {
                error!("unhandled dependency {dep}");
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
                if is_skipped(&var.attrs) {
                    continue;
                }

                let mut properties = IndexMap::new();
                let mut field_types = Vec::new();
                for field in var.fields.iter() {
                    let (ty, ty_deps) = self.primitive_to_nix(&field.ty);

                    if let Some((property_name, default)) = to_kdl_property(&field.attrs) {
                        let ty = if default.is_some() {
                            NixType::null(ty)
                        } else {
                            ty
                        };
                        properties.insert(property_name, NixOption::new(ty));
                    } else {
                        field_types.push(ty);
                    }
                    deps.extend(ty_deps);
                }

                let opt_ty = if !properties.is_empty() {
                    let mut options = properties;

                    if !field_types.is_empty() {
                        options.insert(
                            "args".into(),
                            NixOption::new(NixType::list(NixType::one_of(field_types))),
                        );
                    }

                    NixType::Submodule(Submodule { options })
                } else if field_types.is_empty() {
                    NixType::Bool
                } else if field_types.len() == 1 {
                    field_types[0].clone()
                } else {
                    NixType::list(NixType::one_of(field_types))
                };
                options.insert(var.ident.to_string(), NixOption::new(opt_ty));
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

        decl.insert(root.ident.to_string(), ty);

        Ok((decl, deps))
    }

    fn struct_to_submodules(
        &mut self,
        root: &ItemStruct,
    ) -> anyhow::Result<(NixDeclarations, Vec<String>)> {
        let mut nix_values = IndexMap::new();
        let mut deps = Vec::new();

        let submodule_name = root.ident.to_string();
        if self.visited.contains(&submodule_name) {
            return Ok((nix_values, deps));
        }
        self.visited.insert(submodule_name.clone());

        let mut submodule = Submodule {
            options: IndexMap::new(),
        };

        for field in &root.fields {
            let syn::Type::Path(type_path) = &field.ty else {
                unreachable!("should only have type paths");
            };

            let segments = &type_path.path.segments;
            let type_ident = &segments.last().unwrap().ident;
            let field_ident = field.ident.as_ref().unwrap_or(&root.ident).to_string();

            let field_id = (submodule_name.to_string(), field_ident.to_string());
            if let Some(opt) = self.overrides.option_overrides.get(&field_id) {
                debug!("Overriding option {}.{}", field_id.0, field_id.1);
                submodule.options.insert(field_id.1, opt.clone());
                continue;
            }

            let ty = if self.structs.contains_key(&type_ident.to_string())
                && !self
                    .overrides
                    .type_overrides
                    .contains_key(&type_ident.to_string())
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
        nix_values.insert(submodule_name, NixType::Submodule(submodule));

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
            .last()
            .expect("missing head of path");

        let ty_ident = head.ident.to_string();

        if let Some(val) = self.overrides.type_overrides.get(&ty_ident) {
            trace!("applying overrides for {}", &ty_ident);
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
                    if ty_ident == "Option" {
                        NixType::null(ty)
                    } else {
                        NixType::list(ty)
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

fn is_skipped(attrs: &[Attribute]) -> bool {
    attrs.iter().any(|attr| {
        let Meta::List(ref list) = attr.meta else {
            return false;
        };

        attr.path().is_ident("knuffel")
            && list.tokens.clone().into_iter().any(|token| {
                let proc_macro2::TokenTree::Ident(ident) = token else {
                    return false;
                };

                ident == "skip"
            })
    })
}

fn to_kdl_property(attrs: &[Attribute]) -> Option<(String, Option<String>)> {
    let name_capture =
        Regex::new(r#"name\s*=\s*"([^"]+)"\s*\)(?:\s*,\s*default(?:\s*=\s*([^"\s\)]+))?)?"#)
            .unwrap();
    for attr in attrs {
        if let Some(ident) = attr.path().get_ident()
            && ident == "knuffel"
            && let Meta::List(ref meta) = attr.meta
            && let Some(caps) = name_capture.captures(&meta.tokens.to_string())
        {
            let property_name = caps[1].to_string();
            let mut default = caps.get(2).map(|default| default.as_str().to_string());
            if meta.tokens.to_string().contains("default") && default.is_none() {
                default = Some(String::new());
            }
            return Some((property_name, default));
        }
    }
    None
}

fn normalize_name(s: &str) -> String {
    let mut chars = vec![];
    for char in s.chars() {
        if !chars.is_empty() && char.is_uppercase() {
            chars.push('-');
        }
        chars.push(char);
    }

    let mut res = chars
        .into_iter()
        .collect::<String>()
        .to_lowercase()
        .replace("_", "-");

    if res.ends_with("-") {
        res.replace_range(res.len() - 1.., "_")
    }

    res
}
