use std::path::Path;

use serde_json::json;

use crate::nix::{json_to_nix, types::NixConfigTypes};

pub fn generate_full_example(config: &NixConfigTypes, output_path: &Path) -> String {
    // let x = config.inner();
    json_to_nix(json!({
        "code": 200,
        "config": {
            "input": {
                "desc": "test"
            }
        }
    }))
}
