{
  lib,
  utils,
}: let
  inherit (utils) sectionsToString indentSection;
in {
  "layout.shadow.offset" = name: value: "${name} x=${toString value.x} y=${toString value.y}";

  binds = name: value: let
    toKDLString = value:
      if builtins.isBool value
      then lib.boolToString value
      else toString value;
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
