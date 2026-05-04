use std::{
    collections::HashMap,
    fs::{read_dir, read_to_string},
    path::Path,
};

use syn::Item;

const SKIPPED_STRUCTS: [&str; 1] = ["FloatOrInt"];

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
    let content = read_to_string(path)?;
    let ast = syn::parse_file(&content)?;

    let mut structs = HashMap::new();
    for item in ast.items {
        match item {
            Item::Enum(ref item_enum) => {
                structs.insert(item_enum.ident.to_string(), item);
            }
            Item::Struct(ref item_struct) => {
                if !SKIPPED_STRUCTS.contains(&item_struct.ident.to_string().as_str()) {
                    structs.insert(item_struct.ident.to_string(), item);
                }
            }
            _ => {}
        }
    }

    Ok(structs)
}
