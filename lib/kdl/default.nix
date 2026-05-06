{lib}: let
  utils = import ./utils.nix {inherit lib;};
in {
  configToKDL = config: let
    sections =
      []
      ++ (lib.mapAttrsToList utils.primitiveToKDL config);
  in ''
    ${utils.sectionsToString sections}
  '';
}
