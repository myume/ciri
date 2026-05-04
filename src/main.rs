use anyhow::{Context, anyhow};
use std::{collections::HashMap, env::temp_dir, fs::File, io::Write, process::Command};

use crate::nix::types::generate_config_type;

const NIRI_REPO_URL: &str = "https://github.com/niri-wm/niri.git";

mod crawler;
mod nix;

const CRAWLER_PATHS: [&str; 2] = ["niri/niri-config", "niri/niri-ipc/src/lib.rs"];

fn main() -> anyhow::Result<()> {
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

    let mut structs = HashMap::new();
    for path in CRAWLER_PATHS {
        structs.extend(crawler::crawl(&repo_dir.join(path))?);
    }

    let nix_config_type = generate_config_type(&structs)?;

    let type_path = "types.nix";
    let mut type_file = File::create(type_path)?;
    let (status, nix_config_type) =
        alejandra::format::in_memory(type_path.to_string(), nix_config_type);

    if let alejandra::format::Status::Error(err) = status {
        return Err(anyhow!("Failed to format {}: {}", type_path, err));
    }

    type_file.write_all(nix_config_type.as_bytes())?;

    Ok(())
}
