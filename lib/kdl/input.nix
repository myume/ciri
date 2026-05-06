{
  lib,
  utils,
}:
with utils; let
  indentSections = map (mapNull indentSection);
in rec {
  xkbToKDL = xkb: let
    sections =
      lib.mapAttrsToList primitiveToKDL xkb;
  in ''
    xkb {
    ${sectionsToString (indentSections sections)}
    }
  '';

  keyboardToKDL = keyboard: let
    sections =
      [
        (mapNull xkbToKDL keyboard.xkb)
      ]
      ++ (lib.mapAttrsToList primitiveToKDL keyboard);
  in ''
    keyboard {
    ${sectionsToString (indentSections sections)}
    }
  '';

  toKDL = input: let
    sections = [
      (mapNull keyboardToKDL input.keyboard)
    ];
  in ''
    input {
    ${sectionsToString (indentSections sections)}
    }
  '';
}
