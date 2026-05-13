use serde_json::{Map, Value, json};

use crate::nix::{
    NIX_CONFIG_TYPE_ROOT, NixDeclarations, NixType, json_to_nix, types::NixConfigTypes,
};

pub fn generate_full_example(config: &NixConfigTypes) -> String {
    // we don't currently have a representation of nix values
    // the easiest way to represent nix values is through json values
    // not a perfect solution

    let types = config.inner();
    let root = types
        .get(NIX_CONFIG_TYPE_ROOT)
        .expect("missing root type of config");

    json_to_nix(json!({
        "programs.niri": {
            "enable": true,
            "settings": visit_options(root, types)
        }

    }))
}

fn visit_options(root: &NixType, types: &NixDeclarations) -> Value {
    match root {
        NixType::String => json!("test"),
        NixType::Bool => json!(true),
        NixType::Float => json!(0.5),
        NixType::List(nix_type) => Value::Array(vec![visit_options(nix_type, types)]),
        NixType::NullOr(nix_type) => visit_options(nix_type, types),
        NixType::Enum(items) => json!(items.first().expect("empty enum")),
        NixType::Either(nix_type, _) => visit_options(nix_type, types),
        NixType::OneOf(nix_types) => visit_options(nix_types.first().expect("empty types"), types),
        NixType::U8 | NixType::U16 | NixType::U32 | NixType::Unsigned => json!(8),
        NixType::I32 | NixType::I16 | NixType::Int => json!(8),

        NixType::AttrTag(index_map) => {
            // use the first entry
            let (k, v) = index_map.first().expect("empty enum");
            let map = Map::from_iter([(
                k.to_owned(),
                v.example.clone().unwrap_or(visit_options(&v.ty, types)),
            )]);
            Value::Object(map)
        }
        NixType::Submodule(submodule) => {
            let mut map = Map::new();
            for (k, v) in submodule.options.iter() {
                map.insert(
                    k.to_owned(),
                    v.example.clone().unwrap_or(visit_options(&v.ty, types)),
                );
            }
            Value::Object(map)
        }
        NixType::TypeReference(key) => visit_options(
            types
                .get(key)
                .unwrap_or_else(|| panic!("missing type in reference {}", key)),
            types,
        ),
    }
}
