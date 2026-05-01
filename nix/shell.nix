{
  mkShell,
  rust-analyzer,
  rustfmt,
  clippy,
  cargo,
  rustc,
  rustPlatform,
}:
mkShell {
  nativeBuildInputs = [
    cargo
    rustc
    rustfmt
    rust-analyzer
    clippy
  ];

  env.RUST_SRC_PATH = "${rustPlatform.rustLibSrc}";
}
