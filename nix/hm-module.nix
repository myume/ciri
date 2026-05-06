{
  lib,
  config,
  ...
}: let
  inherit (lib.modules) mkIf;
  inherit (lib.options) mkOption mkEnableOption;

  cfg = config.ciri;
  types = import ../generated/types.nix {inherit lib;};
in {
  options.ciri = {
    enable = mkEnableOption "Ciri, nix config for niri";

    settings = mkOption {
      description = "Niri config";
      type = types.Config;
      default = {};
    };
  };

  config = mkIf cfg.enable {
    xdg.configFile."ciri/ciri.json" = {
      text = lib.toJSON cfg.settings;
    };
  };
}
