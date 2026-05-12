use std::collections::{HashMap, HashSet};

use indexmap::IndexMap;
use syn::Item;

use crate::{
    crawler::{ItemMap, TraitsMap},
    nix::{NixDeclarations, NixOption, NixType},
};

pub enum Filter {
    #[allow(dead_code)]
    Include(HashSet<String>),
    Exclude(HashSet<String>),
}

pub struct Overrides {
    pub option_overrides: IndexMap<(String, String), NixOption>,
    pub type_overrides: HashMap<String, NixType>,

    null_overrides: HashMap<String, Filter>,
    traits_map: TraitsMap,
}

impl Overrides {
    pub fn new(structs: &ItemMap, traits_map: &TraitsMap) -> Self {
        let mut type_overrides: HashMap<String, NixType> = traits_map
            .iter()
            .filter_map(|(name, traits)| {
                if traits.contains("FromStr")
                    && let Some(item) = structs.get(name)
                {
                    match item {
                        Item::Enum(enum_item) => {
                            if enum_item.variants.iter().any(|ele| !ele.fields.is_empty()) {
                                return Some((name.clone(), NixType::String));
                            }
                        }
                        _ => return Some((name.clone(), NixType::String)),
                    };
                }
                None
            })
            .collect();

        type_overrides.extend([
            (
                "FloatOrInt".into(),
                NixType::either(NixType::Float, NixType::Int),
            ),
            (
                "WorkspaceReference".into(),
                NixType::either(NixType::String, NixType::Unsigned),
            ),
        ]);

        Overrides {
            traits_map: traits_map.clone(),
            null_overrides: HashMap::from([(
                "Bind".into(),
                Filter::Exclude(HashSet::from(["key".into(), "action".into()])),
            )]),
            type_overrides,
            option_overrides: IndexMap::from([
                (
                    ("LayerRule".to_string(), "excludes".to_string()),
                    NixOption::new(NixType::list(NixType::TypeReference(
                        "layer_rule_match".to_string(),
                    ))),
                ),
                (
                    ("LayerRule".to_string(), "matches".to_string()),
                    NixOption::new(NixType::list(NixType::TypeReference(
                        "layer_rule_match".to_string(),
                    ))),
                ),
                (
                    ("WindowRule".to_string(), "excludes".to_string()),
                    NixOption::new(NixType::list(NixType::TypeReference(
                        "window_rule_match".to_string(),
                    ))),
                ),
                (
                    ("WindowRule".to_string(), "matches".to_string()),
                    NixOption::new(NixType::list(NixType::TypeReference(
                        "window_rule_match".to_string(),
                    ))),
                ),
            ]),
        }
    }

    pub fn apply_nullable(&self, input: NixDeclarations) -> NixDeclarations {
        let can_apply_null =
            |ty: &NixType| !matches!(ty, NixType::NullOr(_)) && !matches!(ty, NixType::List(_));

        input
            .into_iter()
            .map(|(k, mut v)| {
                if let Some(traits) = self.traits_map.get(&k)
                    && traits.contains("Default")
                    && let NixType::Submodule(ref mut submodule) = v
                {
                    for opt in submodule.options.values_mut() {
                        if can_apply_null(&opt.ty) {
                            opt.ty = NixType::null(opt.ty.clone());
                        }
                    }
                }
                (k, v)
            })
            .map(|(k, mut v)| {
                if let Some(nullable) = self.null_overrides.get(&k)
                    && let NixType::Submodule(ref mut submodule) = v
                {
                    for (opt_name, opt) in submodule.options.iter_mut() {
                        let names = match nullable {
                            Filter::Include(hash_set) => hash_set,
                            Filter::Exclude(hash_set) => hash_set,
                        };

                        if ((matches!(nullable, Filter::Include(_)) && names.contains(opt_name))
                            || (matches!(nullable, Filter::Exclude(_))
                                && !names.contains(opt_name)))
                            && can_apply_null(&opt.ty)
                        {
                            opt.ty = NixType::null(opt.ty.clone());
                        }
                    }
                }
                (k, v)
            })
            .collect()
    }
}
