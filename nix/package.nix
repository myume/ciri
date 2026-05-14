{
  rustPlatform,
  lib,
}:
rustPlatform.buildRustPackage {
  pname = "ciri";
  version = "0.1.0";

  src = ../.;
  cargoLock.lockFile = ../Cargo.lock;

  buildInputs = [
  ];

  meta = {
    description = "Nix configuration options generation for niri";
    homepage = "https://github.com/myume/ciri";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [yum];
    platforms = lib.platforms.linux;
  };
}
