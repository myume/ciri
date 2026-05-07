{
  lib,
  utils,
}: let
  inherit (utils) sectionsToString indentSection;
  toBoolArg = name: value: "${name} ${lib.boolToString value}";
  toKDLString = value:
    if builtins.isBool value
    then lib.boolToString value
    else toString value;
in {
  "window-rules.window-rule.background-effect.blur" = toBoolArg;
  "window-rules.window-rule.background-effect.xray" = toBoolArg;
  "window-rules.window-rule.clip-to-geometry" = toBoolArg;

  "layer-rules.layer-rule.place-within-backdrop" = toBoolArg;
  "layer-rules.layer-rule.background-effect.blur" = toBoolArg;
  "layer-rules.layer-rule.background-effect.xray" = toBoolArg;

  "layout.shadow.offset" = name: value: "${name} x=${toString value.x} y=${toString value.y}";

  "layout.preset-column-widths" = name: value: let
    sections = lib.flatten (
      map (
        lib.mapAttrsToList (ele_name: ele_val: "${ele_name} ${toKDLString ele_val}")
      )
      value
    );
  in ''
    ${name} {
    ${sectionsToString (map indentSection sections)}
    }
  '';

  binds = name: value: let
    binds = map (val: let
      actionName = builtins.head (builtins.attrNames val.action);
      action = val.action.${actionName};
      values =
        if builtins.isAttrs action
        then
          lib.lists.flatten (lib.mapAttrsToList (name: value:
            if name == "args"
            then
              map toKDLString
              value
            else if value != null
            then [
              "${name}=${toKDLString value}"
            ]
            else [])
          action)
        else if builtins.isString action && action != ""
        then [''"${action}"'']
        else if !builtins.isInt action && builtins.isFloat action
        then [(toString action)]
        else [];
    in ''"${val.key}" { ${actionName}${
        if values == []
        then ""
        else " " + builtins.concatStringsSep " " values
      }; }'')
    value;
  in ''
    ${name} {
    ${sectionsToString (map indentSection binds)}
    }
  '';
}
