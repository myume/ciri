use anyhow::anyhow;
use log::{debug, info, trace};
use std::{collections::HashMap, fs::read_to_string, path::Path};

use serde::{Deserialize, Serialize};
use serde_json::Value;

use crate::nix::{NixDeclarations, NixOption, NixType};

/// Documentation for a nix option
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct OptionDocs {
    description: Option<String>,
    example: Option<serde_json::Value>,
}

/// Mapping from option path to docs
type DocMapping = HashMap<String, OptionDocs>;

/// Inject documentation into generated nix types
pub struct DocInjector {
    docs: DocMapping,
}

impl DocInjector {
    fn flatten_docs(&mut self, root: &Value, path: &mut Vec<String>) -> anyhow::Result<()> {
        if let Ok(docs) = serde_json::from_value::<OptionDocs>(root.clone()) {
            let field = path.join(".").to_string();
            if !field.is_empty() {
                self.docs.insert(field, docs.clone());
            }
            return Ok(());
        }

        if let Value::Object(pairs) = root {
            for (k, v) in pairs {
                path.push(k.clone());
                self.flatten_docs(v, path)?;
                path.pop();
            }
            Ok(())
        } else {
            Err(anyhow!("option docs contained illegal syntax {}", root))
        }
    }

    fn load_docs(&mut self, source: &Path) -> anyhow::Result<()> {
        let content = read_to_string(source)?;
        let root: serde_json::Value = serde_json::from_str(&content)?;
        let mut path = Vec::new();
        self.flatten_docs(&root, &mut path)?;
        Ok(())
    }

    pub fn new(source: &Path) -> anyhow::Result<Self> {
        let mut docs = DocInjector {
            docs: DocMapping::new(),
        };

        docs.load_docs(source)?;
        info!("Loaded docs from {}", source.display());
        debug!("{:#?}", docs.docs);

        Ok(docs)
    }

    fn inject_into_option(docs: &OptionDocs, opt: &mut NixOption) {
        opt.desc = docs.description.clone();
        opt.example = docs.example.clone();
    }

    pub fn inject_docs(&self, decls: NixDeclarations) -> NixDeclarations {
        decls
            .into_iter()
            .map(|(name, mut decl)| {
                match decl {
                    NixType::AttrTag(ref mut variants) => {
                        for (field, opt) in variants.iter_mut() {
                            let path = format!("{name}.{field}");
                            if let Some(docs) = self.docs.get(&path) {
                                trace!("adding docs for {path}");
                                DocInjector::inject_into_option(docs, opt);
                            }
                        }
                    }
                    NixType::Submodule(ref mut submodule) => {
                        for (field, opt) in submodule.options.iter_mut() {
                            let path = format!("{name}.{field}");
                            if let Some(docs) = self.docs.get(&path) {
                                trace!("adding docs for {path}");
                                DocInjector::inject_into_option(docs, opt);
                            }
                        }
                    }
                    _ => {}
                }
                (name, decl)
            })
            .collect()
    }
}
