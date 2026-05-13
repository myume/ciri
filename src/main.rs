use anyhow::{Context, anyhow};
use clap::Parser;
use env_logger::Env;
use log::info;
use std::{
    env::temp_dir,
    fs::{File, remove_dir_all},
    io::Write,
    path::PathBuf,
    process::Command,
};

use crate::{
    crawler::{ItemMap, TraitsMap},
    nix::types::NixTypeParser,
};

mod crawler;
mod nix;

const NIRI_REPO_URL: &str = "https://github.com/niri-wm/niri.git";
const CRAWLER_PATHS: [&str; 2] = ["niri/niri-ipc/src/lib.rs", "niri/niri-config"];

#[derive(Parser)]
#[command(version, about, long_about = None)]
struct Cli {
    /// Dry run the program
    #[arg(long)]
    dry_run: bool,

    /// Path to save output
    #[arg(short, long, default_value = "generated/types.nix")]
    output_path: PathBuf,

    /// Directory to save niri repo to, by default saves to /tmp/niri.
    #[arg(long)]
    repo_dir: Option<PathBuf>,

    /// Regenerate the niri types from a clean repo
    #[arg(long)]
    clean: bool,

    /// Clean up cloned repo
    #[arg(long)]
    cleanup: bool,

    /// Niri branch to clone
    #[arg(short, long, default_value = "main")]
    branch: String,

    #[arg(long, default_value = "./docs/option-docs.json")]
    docs_path: PathBuf,
}

fn main() -> anyhow::Result<()> {
    let args = Cli::parse();
    env_logger::Builder::from_env(Env::default().default_filter_or("info"))
        .format_timestamp(None)
        .init();

    let repo_dir = args.repo_dir.unwrap_or(temp_dir());
    let niri_dir = repo_dir.join("niri");

    if args.clean && niri_dir.exists() {
        info!("Cleaning up niri repo at {}", niri_dir.display());
        remove_dir_all(&niri_dir)?;
    }

    if !niri_dir.exists() {
        info!("Cloning niri repo to {}", niri_dir.display());
        let mut clone = Command::new("git")
            .args(["clone", NIRI_REPO_URL, "-b", args.branch.as_str()])
            .current_dir(&repo_dir)
            .spawn()
            .context("Failed to clone niri repo")?;

        if !clone.wait()?.success() {
            return Err(anyhow!("Failed to clone niri repo"));
        }
    } else {
        info!(
            "Niri repo exists at {}, changing branch to {:?}",
            niri_dir.display(),
            args.branch
        );

        let mut fetch = Command::new("git")
            .arg("fetch")
            .current_dir(&niri_dir)
            .spawn()
            .context("Failed to fetch repo branches")?;

        if !fetch.wait()?.success() {
            return Err(anyhow!("Failed to fetch repo branches"));
        }

        let mut change = Command::new("git")
            .args(["checkout", args.branch.as_str()])
            .current_dir(&niri_dir)
            .spawn()
            .context("Failed to clone niri repo")?;

        if !change.wait()?.success() {
            return Err(anyhow!("Failed to change to branch {}", args.branch));
        }
    }

    info!("Crawling niri files...");
    let mut structs = ItemMap::new();
    let mut traits_map = TraitsMap::new();
    for path in CRAWLER_PATHS {
        let (found_structs, found_traits) = crawler::crawl(&repo_dir.join(path))?;
        structs.extend(found_structs);
        for (k, v) in found_traits {
            traits_map.entry(k).or_default().extend(v);
        }
    }

    let nix_config_types =
        NixTypeParser::new(&args.docs_path, structs, &traits_map)?.generate_types()?;

    info!("Outputting types...");
    let mut type_file = File::create(&args.output_path)?;
    let (status, config_content) = alejandra::format::in_memory(
        args.output_path.display().to_string(),
        nix_config_types.as_file(),
    );

    if !args.dry_run {
        type_file.write_all(config_content.as_bytes())?;
        info!("Saved types to {}", args.output_path.display());
    }

    if let alejandra::format::Status::Error(err) = status {
        return Err(anyhow!(
            "Failed to format {}: {}",
            args.output_path.display(),
            err
        ));
    }

    if args.cleanup {
        info!("Cleaning up niri repo at {}", niri_dir.display());
        remove_dir_all(&niri_dir)?;
    }

    Ok(())
}
