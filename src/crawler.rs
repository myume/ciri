use std::{
    collections::HashMap,
    fs::{read_dir, read_to_string},
    path::Path,
};

use log::info;
use syn::Item;

const SKIPPED_STRUCTS: [&str; 2] = ["FloatOrInt", "Key"];

pub type ItemMap = HashMap<String, Item>;

pub fn crawl(path: &Path) -> anyhow::Result<ItemMap> {
    if path.is_dir() {
        let mut structs = HashMap::new();
        for entry in read_dir(path)? {
            let path = entry?.path();
            structs.extend(crawl(&path)?);
        }
        return Ok(structs);
    } else if path.extension().is_some_and(|ext| ext == "rs") {
        return parse_file(path);
    }

    Ok(HashMap::new())
}

fn parse_file(path: &Path) -> anyhow::Result<ItemMap> {
    info!("Crawling file {}...", path.display());

    let content = read_to_string(path)?;
    let ast = syn::parse_file(&content)?;

    let mut structs = HashMap::new();
    for item in ast.items {
        match item {
            Item::Enum(ref item_enum) => {
                structs.entry(item_enum.ident.to_string()).or_insert(item);
            }
            Item::Struct(ref item_struct) => {
                let ident = item_struct.ident.to_string();
                if !SKIPPED_STRUCTS.contains(&ident.as_str()) {
                    structs.entry(ident).or_insert(item);
                }
            }
            _ => {}
        }
    }

    Ok(structs)
}
