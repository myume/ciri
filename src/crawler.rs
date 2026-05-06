use std::{
    collections::{HashMap, HashSet},
    fs::{read_dir, read_to_string},
    path::Path,
};

use log::info;
use syn::{Item, Type};

const SKIPPED_STRUCTS: [&str; 2] = ["FloatOrInt", "Key"];

pub type ItemMap = HashMap<String, Item>;
pub type Defaultable = HashSet<String>;

pub fn crawl(path: &Path) -> anyhow::Result<(ItemMap, Defaultable)> {
    if path.is_dir() {
        let mut structs = HashMap::new();
        let mut defaultables = HashSet::new();
        for entry in read_dir(path)? {
            let path = entry?.path();
            let (found_structs, found_defaults) = crawl(&path)?;
            structs.extend(found_structs);
            defaultables.extend(found_defaults);
        }
        return Ok((structs, defaultables));
    } else if path.extension().is_some_and(|ext| ext == "rs") {
        return parse_file(path);
    }

    Ok((HashMap::new(), HashSet::new()))
}

fn parse_file(path: &Path) -> anyhow::Result<(ItemMap, Defaultable)> {
    info!("Crawling file {}...", path.display());

    let content = read_to_string(path)?;
    let ast = syn::parse_file(&content)?;

    let mut structs = HashMap::new();
    let mut defaultables = HashSet::new();
    for item in ast.items {
        match item {
            Item::Impl(ref item_impl) => {
                if let Some(ref item_trait) = item_impl.trait_
                    && let Some(seg) = item_trait.1.segments.last()
                    && seg.ident == "Default"
                    && let Type::Path(path) = *item_impl.self_ty.clone()
                {
                    defaultables.insert(path.path.require_ident()?.to_string());
                }
            }
            Item::Enum(ref item_enum) => {
                structs.entry(item_enum.ident.to_string()).or_insert(item);
            }
            Item::Struct(ref item_struct) => {
                let ident = item_struct.ident.to_string();
                if item_struct.attrs.iter().any(|attr| {
                    let syn::Meta::List(ref meta_list) = attr.meta else {
                        return false;
                    };
                    meta_list
                        .tokens
                        .clone()
                        .into_iter()
                        .any(|token| token.to_string() == "Default")
                }) {
                    defaultables.insert(item_struct.ident.to_string());
                }

                if !SKIPPED_STRUCTS.contains(&ident.as_str()) {
                    structs.entry(ident).or_insert(item);
                }
            }
            _ => {}
        }
    }

    Ok((structs, defaultables))
}
