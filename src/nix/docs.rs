use std::collections::HashMap;

use crate::nix::types::NixDeclarations;

/// Documentation for a nix option
struct OptionDocs {
    example: Option<String>,
    description: Option<String>,
}

/// Mapping from option path to docs
type DocMapping = HashMap<String, OptionDocs>;

/// Inject documentation into generated nix types
pub struct DocInjector {
    docs: DocMapping,
}

impl DocInjector {
    pub fn new() -> Self {
        todo!()
    }

    pub fn inject_docs(decls: NixDeclarations) -> NixDeclarations {
        todo!()
    }
}
