use indexmap::IndexMap;
use serde_json::Value;

mod docs;
mod overrides;

pub mod examples;
pub mod types;

type NixDeclarations = IndexMap<String, NixType>;
type OptionsMap = IndexMap<String, NixOption>;

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum NixType {
    String,
    Bool,
    Float,
    List(Box<NixType>),
    NullOr(Box<NixType>),
    Enum(Vec<String>),
    Either(Box<NixType>, Box<NixType>),
    OneOf(Vec<NixType>),
    U8,
    U16,
    U32,
    Unsigned,
    I32,
    I16,
    Int,
    AttrTag(OptionsMap),
    Submodule(Submodule),
    TypeReference(String),
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct NixOption {
    ty: NixType,
    desc: Option<String>,
    default: Option<String>,
    example: Option<serde_json::Value>,
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct Submodule {
    options: OptionsMap,
}

impl NixType {
    pub fn innermost_type(&self) -> NixType {
        match self {
            NixType::List(nix_type) | NixType::NullOr(nix_type) => nix_type.innermost_type(),
            _ => self.clone(),
        }
    }

    pub fn null(inner: NixType) -> NixType {
        NixType::NullOr(Box::new(inner))
    }

    pub fn list(inner: NixType) -> NixType {
        NixType::List(Box::new(inner))
    }

    pub fn either(left: NixType, right: NixType) -> NixType {
        NixType::Either(Box::new(left), Box::new(right))
    }

    pub fn one_of(inner: Vec<NixType>) -> NixType {
        NixType::OneOf(inner)
    }
}

impl NixOption {
    pub fn new(ty: NixType) -> NixOption {
        NixOption {
            default: match ty {
                NixType::List(_) => Some("[]".into()),
                _ => None,
            },
            ty,
            desc: None,
            example: None,
        }
    }
}

fn json_to_nix(val: serde_json::Value) -> String {
    match val {
        Value::Null => "null".to_string(),
        Value::Bool(v) => v.to_string(),
        Value::Number(number) => number.to_string(),
        Value::String(s) => format!("{:?}", s),
        Value::Array(values) => format!(
            "[{}]",
            values
                .into_iter()
                .map(json_to_nix)
                .collect::<Vec<String>>()
                .join(" ")
        ),
        Value::Object(map) => format!(
            "{{
                {}
            }}",
            map.into_iter()
                .map(|(key, value)| format!("{} = {};", key, json_to_nix(value)))
                .collect::<String>()
        ),
    }
}
