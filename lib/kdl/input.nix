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

  touchpadToKDL = touchpad: let
    sections =
      lib.mapAttrsToList primitiveToKDL touchpad;
  in ''
    touchpad {
    ${sectionsToString (indentSections sections)}
    }
  '';

  tabletToKDL = tablet: let
    sections =
      lib.mapAttrsToList primitiveToKDL tablet;
  in ''
    tablet {
    ${sectionsToString (indentSections sections)}
    }
  '';

  toKDL = input: let
    sections =
      [
        (mapNull keyboardToKDL input.keyboard)
        (mapNull touchpadToKDL input.touchpad)
        (mapNull touchpadToKDL input.tablet)
      ]
      ++ (lib.mapAttrsToList primitiveToKDL input);
  in ''
    input {
    ${sectionsToString (indentSections sections)}
    }
  '';
}
