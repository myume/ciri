{lib, ...}: let
  inherit (lib.options) mkOption mkEnableOption;
  niriTypes = import ../../generated/types.nix {inherit lib;};
in {
  options.programs.niri = {
    enable = mkEnableOption "Ciri, nix config for niri";

    settings = mkOption {
      description = "Niri config";
      type = niriTypes.config;
      default = {};
    };
  };
}
