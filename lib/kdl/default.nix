{lib}: let
  utils = import ./utils.nix {inherit lib;};

  input = import ./input.nix {
    inherit lib utils;
  };
in {
  configToKDL = config: let
    sections =
      [
        (utils.mapNull input.toKDL config.input)
      ]
      ++ (lib.mapAttrsToList utils.primitiveToKDL config);
  in ''
    ${utils.sectionsToString sections}
  '';
}
