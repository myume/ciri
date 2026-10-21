{niri}: {
  pkgs,
  lib,
  ...
}: {
  programs.niri.package =
    lib.mkDefault
    niri.packages.${pkgs.stdenv.hostPlatform.system}.niri;
}
