use std::{
    collections::HashMap,
    fs::{read_dir, read_to_string},
    path::Path,
};

use syn::{Item, ItemStruct};

pub fn crawl(path: &Path) -> anyhow::Result<HashMap<String, ItemStruct>> {
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

fn parse_file(path: &Path) -> anyhow::Result<HashMap<String, ItemStruct>> {
    let content = read_to_string(path)?;
    let ast = syn::parse_file(&content)?;

    let mut structs = HashMap::new();
    for item in ast.items {
        if let Item::Struct(item_struct) = item {
            structs.insert(item_struct.ident.to_string(), item_struct);
        }
    }

    Ok(structs)
}
