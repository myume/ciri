use std::{
    collections::{HashMap, HashSet},
    fs::{read_dir, read_to_string},
    path::Path,
};

use log::debug;
use proc_macro2::TokenTree;
use syn::{Item, Type};

pub type ItemMap = HashMap<String, Item>;
pub type TraitsMap = HashMap<String, HashSet<String>>;

pub fn crawl(path: &Path) -> anyhow::Result<(ItemMap, TraitsMap)> {
    if path.is_dir() {
        let mut structs = ItemMap::new();
        let mut traits_map = TraitsMap::new();
        for entry in read_dir(path)? {
            let path = entry?.path();
            let (found_structs, found_traits) = crawl(&path)?;
            structs.extend(found_structs);
            for (k, v) in found_traits {
                traits_map.entry(k).or_default().extend(v);
            }
        }
        return Ok((structs, traits_map));
    } else if path.extension().is_some_and(|ext| ext == "rs") {
        return parse_file(path);
    }

    Ok((ItemMap::new(), TraitsMap::new()))
}

fn parse_file(path: &Path) -> anyhow::Result<(ItemMap, TraitsMap)> {
    debug!("Crawling file {}...", path.display());

    let content = read_to_string(path)?;
    let ast = syn::parse_file(&content)?;

    let mut structs = ItemMap::new();
    let mut trait_map = TraitsMap::new();
    for item in ast.items {
        match item {
            Item::Impl(ref item_impl) => {
                if let Some(ref item_trait) = item_impl.trait_
                    && let Some(seg) = item_trait.1.segments.last()
                    && let Type::Path(path) = *item_impl.self_ty.clone()
                {
                    let impl_for = path
                        .path
                        .require_ident()
                        .unwrap_or(&path.path.segments.last().unwrap().ident);

                    trait_map
                        .entry(impl_for.to_string())
                        .or_default()
                        .insert(seg.ident.to_string());
                }
            }
            Item::Enum(ref item_enum) => {
                structs.entry(item_enum.ident.to_string()).or_insert(item);
            }
            Item::Struct(ref item_struct) => {
                let struct_ident = item_struct.ident.to_string();
                item_struct.attrs.iter().for_each(|attr| {
                    if let syn::Meta::List(ref meta_list) = attr.meta {
                        for token in meta_list.tokens.clone() {
                            if let TokenTree::Ident(attr_ident) = token {
                                trait_map
                                    .entry(struct_ident.to_string())
                                    .or_default()
                                    .insert(attr_ident.to_string());
                            }
                        }
                    }
                });

                structs.entry(struct_ident).or_insert(item);
            }
            _ => {}
        }
    }

    Ok((structs, trait_map))
}
