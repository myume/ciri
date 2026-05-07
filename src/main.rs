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
    nix::NixTypeParser,
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
    #[arg(short, long)]
    repo_dir: Option<PathBuf>,

    #[arg(long)]
    clean: bool,

    /// Clean up cloned repo
    #[arg(long)]
    cleanup: bool,
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
        let (found_structs, found_traits) = crawler::crawl(&repo_dir.join(path))?;
        structs.extend(found_structs);
        for (k, v) in found_traits {
            traits_map.entry(k).or_default().extend(v);
        }
    }

    let nix_config_type = NixTypeParser::new(structs, traits_map).generate_config_type()?;

    info!("Outputting types...");
    let mut type_file = File::create(&args.output_path)?;
    let (status, nix_config_type) =
        alejandra::format::in_memory(args.output_path.display().to_string(), nix_config_type);

    if !args.dry_run {
        type_file.write_all(nix_config_type.as_bytes())?;
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
