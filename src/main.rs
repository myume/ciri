use anyhow::{Context, anyhow};
use std::{env::temp_dir, process::Command};

const NIRI_REPO_URL: &str = "https://github.com/niri-wm/niri.git";

mod crawler;

fn main() -> anyhow::Result<()> {
    let repo_dir = temp_dir();
    let config_path = repo_dir.join("niri").join("niri-config");

    if !config_path.exists() {
        let mut child = Command::new("git")
            .args(["clone", NIRI_REPO_URL])
            .current_dir(&repo_dir)
            .spawn()
            .context("Failed to clone niri repo")?;

        if !child.wait()?.success() {
            return Err(anyhow!("Failed to clone niri repo"));
        }
    }

    let structs = crawler::crawl(&config_path)?;

    Ok(())
}
