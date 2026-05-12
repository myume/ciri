use indexmap::IndexMap;

mod docs;
mod overrides;

pub mod types;

pub type NixDeclarations = IndexMap<String, NixType>;
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
        }
    }
}
