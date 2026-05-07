use anyhow::{Context, anyhow};
use env_logger::Env;
use log::info;
use std::{env::temp_dir, fs::File, io::Write, process::Command};

use crate::{
    crawler::{ItemMap, TraitsMap},
    nix::types::NixTypeParser,
};

const NIRI_REPO_URL: &str = "https://github.com/niri-wm/niri.git";

mod crawler;
mod nix;

const CRAWLER_PATHS: [&str; 2] = ["niri/niri-ipc/src/lib.rs", "niri/niri-config"];

fn main() -> anyhow::Result<()> {
    env_logger::Builder::from_env(Env::default().default_filter_or("info"))
        .format_timestamp(None)
        .init();

    let repo_dir = temp_dir();

    if !repo_dir.join("niri").exists() {
        let mut child = Command::new("git")
            .args(["clone", NIRI_REPO_URL])
            .current_dir(&repo_dir)
            .spawn()
            .context("Failed to clone niri repo")?;

        if !child.wait()?.success() {
            return Err(anyhow!("Failed to clone niri repo"));
        }
    }

    let mut structs = ItemMap::new();
    let mut traits_map = TraitsMap::new();
    for path in CRAWLER_PATHS {
        let (found_structs, found_defaults) = crawler::crawl(&repo_dir.join(path))?;
        structs.extend(found_structs);
        traits_map.extend(found_defaults);
    }

    let nix_config_type = NixTypeParser::new(structs, traits_map).generate_config_type()?;

    info!("Outputting types...");
    let type_path = "generated/types.nix";
    let mut type_file = File::create(type_path)?;
    let (status, nix_config_type) =
        alejandra::format::in_memory(type_path.to_string(), nix_config_type);
    type_file.write_all(nix_config_type.as_bytes())?;

    if let alejandra::format::Status::Error(err) = status {
        return Err(anyhow!("Failed to format {}: {}", type_path, err));
    }

    Ok(())
}
