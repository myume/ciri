{
  lib,
  utils,
}:
with utils; rec {
  xkbToKDL = xkb: let
    sections = lib.pipe xkb [
      (lib.mapAttrsToList
        (name: utils.mapNull (value: "${name} ${value}")))
      (map (mapNull indentSection))
    ];
  in ''
    xkb {
    ${sectionsToString sections}
    }
  '';

  keyboardToKDL = keyboard: let
    sections = map (mapNull indentSection) [
      (mapNull xkbToKDL keyboard.xkb)
    ];
  in ''
    keyboard {
    ${sectionsToString sections}
    }
  '';

  toKDL = input: let
    sections = map (mapNull indentSection) [
      (mapNull keyboardToKDL input.keyboard)
    ];
  in ''
    input {
    ${sectionsToString sections}
    }
  '';
}
