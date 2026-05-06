{
  lib,
  config,
  ...
}: let
  inherit (lib.modules) mkIf;
  inherit (lib.options) mkOption mkEnableOption;

  cfg = config.ciri;
  niriTypes = import ../generated/types.nix {inherit lib;};
  ciriLib = import ../lib {inherit lib;};
in {
  options.ciri = {
    enable = mkEnableOption "Ciri, nix config for niri";

    settings = mkOption {
      description = "Niri config";
      type = niriTypes.Config;
      default = {};
    };
  };

  config = mkIf cfg.enable {
    xdg.configFile."ciri/ciri.kdl" = {
      text = ciriLib.kdl.configToKDL cfg.settings;
    };
  };
}
