{
  lib,
  config,
  ...
}: let
  inherit (lib.modules) mkIf;
  cfg = config.programs.niri;
  ciriLib = import ../../lib {inherit lib;};
in {
  imports = [./options.nix];

  config = mkIf cfg.enable {
    xdg.configFile."niri/config.kdl" = {
      text = ciriLib.kdl.configToKDL cfg.settings;
    };
  };
}
