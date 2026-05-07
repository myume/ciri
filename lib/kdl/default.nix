{lib}: let
  utils = import ./utils.nix {inherit lib;};
  inherit (utils) primitiveToKDL sectionsToString;
  overrides = import ./overrides.nix {inherit lib utils;};
in {
  configToKDL = config: let
    sections =
      lib.mapAttrsToList (
        primitiveToKDL {
          inherit overrides;
        }
      )
      config;
  in
    sectionsToString sections;
}
