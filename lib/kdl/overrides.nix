{utils}: let
  inherit (utils) sectionsToString indentSection;
in {
  "layout.shadow.offset" = name: value: "${name} x=${toString value.x} y=${toString value.y}";

  binds = name: value: let
    binds = map (val: let
      actionName = builtins.head (builtins.attrNames val.action);
      action = val.action.${actionName};
      values =
        if builtins.isAttrs action
        then map toString (builtins.attrValues action)
        else if builtins.isString action
        then [''"${action}"'']
        else if !builtins.isInt action && builtins.isFloat action
        then [(toString action)]
        else [];
    in ''"${val.key}" { ${actionName}${
        if values == []
        then ""
        else " " + builtins.concatStringsSep " " values
      } }'')
    value;
  in ''
    ${name} {
    ${sectionsToString (map indentSection binds)}
    }
  '';
}
