{utils}:
with utils; {
  ".layout.shadow.offset" = name: value: "${name} x=${toString value.x} y=${toString value.y}";
  ".binds" = name: value: let
    binds = map (val: let
      actionName = builtins.head (builtins.attrNames val.action);
    in ''"${val.key}" { ${actionName} }'')
    value;
  in ''
    ${name} {
    ${sectionsToString (map indentSection binds)}
    }
  '';
}
