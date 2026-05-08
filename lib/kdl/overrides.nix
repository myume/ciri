{
  lib,
  utils,
}: let
  inherit (utils) sectionsToString indentSection mapNull;

  toBoolArg = name: value: "${name} ${lib.boolToString value}";

  toKDLString = value:
    if builtins.isList value
    then builtins.concatStringsSep " " (map toKDLString value)
    else if builtins.isBool value
    then lib.boolToString value
    else if builtins.isString value
    then "\"${value}\""
    else toString value;

  flattenAttrEntries =
    lib.mapAttrsToList (ele_name: ele_val: mapNull (val: "${ele_name} ${toKDLString val}") ele_val);

  matchesToKDL = _: value: let
    matches = lib.pipe value [
      (map flattenAttrEntries)
      lib.flatten
      utils.filterNulls
      (map (builtins.replaceStrings [" "] ["="]))
      (map (s: "match ${s}"))
    ];
  in
    sectionsToString matches;

  cornerRadiusToKDL = name: value: "${name} ${builtins.concatStringsSep " " (map toKDLString (builtins.attrValues value))}";

  spawnAtStartupToKDL = name: commands: sectionsToString (map (commandSet: "${name} ${toKDLString commandSet.command}") commands);
in {
  spawn-at-startup = spawnAtStartupToKDL;
  spawn-sh-at-startup = spawnAtStartupToKDL;

  window-rules.window-rule = {
    background-effect.blur = toBoolArg;
    background-effect.xray = toBoolArg;
    clip-to-geometry = toBoolArg;
    geometry-corner-radius = cornerRadiusToKDL;
    matches = matchesToKDL;
  };

  layer-rules.layer-rule = {
    place-within-backdrop = toBoolArg;
    background-effect.blur = toBoolArg;
    background-effect.xray = toBoolArg;
    matches = matchesToKDL;
  };

  layout = {
    shadow.offset = name: value: "${name} x=${toString value.x} y=${toString value.y}";
    preset-column-widths = name: value: let
      sections = lib.flatten (
        map flattenAttrEntries
        value
      );
    in ''
      ${name} {
      ${sectionsToString (map indentSection sections)}
      }
    '';
  };

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
              if builtins.isList value
              then
                map toKDLString (lib.flatten (map (val:
                  if builtins.isAttrs val
                  then lib.attrValues val
                  else val)
                value))
              else
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
        else if builtins.isInt action || builtins.isFloat action
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
