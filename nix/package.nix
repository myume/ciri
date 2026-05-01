{
  rustPlatform,
  lib,
}:
rustPlatform.buildRustPackage {
  pname = "package";
  version = "0.1.0";

  src = ../.;
  cargoLock.lockFile = ../Cargo.lock;

  buildInputs = [
  ];

  meta = {
    description = "A program that does something";
    longDescription = ''
      Let's hope this program continues to do that something,
      forever.
    '';
    homepage = "https://example.com";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [you];
    platforms = lib.platforms.all;
  };
}
