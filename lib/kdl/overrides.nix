{
  lib,
  utils,
}: let
  inherit (utils) sectionsToString indentSection mapNull;
  inherit (builtins) concatStringsSep head attrNames filter;

  toBoolArg = name: value: "${name} ${lib.boolToString value}";

  toKDLString = value:
    if builtins.isList value
    then concatStringsSep " " (map toKDLString value)
    else if builtins.isBool value
    then lib.boolToString value
    else if builtins.isString value
    then "\"${value}\""
    else toString value;

  flattenAttrEntries = sep: attrset:
    utils.filterEmpty (
      lib.mapAttrsToList (ele_name: ele_val: mapNull (val: "${ele_name}${sep}${toKDLString val}") ele_val) attrset
    );

  bindsToKDL = name: value: let
    formatActionArgs = action:
      if !builtins.isAttrs action
      then [(toKDLString action)]
      else
        lib.mapAttrsToList (
          k: v:
            if k == "args"
            then
              lib.concatMap (x:
                if builtins.isAttrs x
                then lib.attrValues x
                else [(toKDLString x)]) (lib.toList v)
            else if v != null
            then "${k}=${toKDLString v}"
            else ""
        )
        action;

    binds =
      map (
        val: let
          actionName = head (attrNames val.action);
          actionData = val.action.${actionName};
          args = lib.flatten (formatActionArgs actionData);
          argsStr = lib.concatStringsSep " " (filter (s: s != "") args);
        in ''"${val.key}" { ${actionName}${
            if argsStr != ""
            then " " + argsStr
            else ""
          }; }''
      )
      value;
  in ''
    ${name} {
    ${sectionsToString (map indentSection binds)}
    }
  '';

  matchToKDL = name: value: let
    matches = lib.pipe value [
      (map (flattenAttrEntries "="))
      lib.flatten
      utils.filterEmpty
      (map (s: "${name} ${s}"))
    ];
  in
    sectionsToString matches;

  cornerRadiusToKDL = name: value: "${name} ${concatStringsSep " " (map toKDLString (builtins.attrValues value))}";

  spawnAtStartupToKDL = name: commands:
    sectionsToString (
      map
      (commandSet: "${name} ${toKDLString commandSet.command}")
      commands
    );

  animationToKDL = _: anim: let
    vals =
      if anim ? easing
      then let
        curve = head (attrNames anim.easing.curve);
        args = map toKDLString (anim.easing.curve.cubic-bezier or []);
        duration =
          if anim.easing ? duration-ms
          then ["duration-ms ${toKDLString anim.easing.duration-ms}"]
          else [];
      in
        ["curve ${toKDLString curve} ${concatStringsSep " " args}"] ++ duration
      else ["spring ${concatStringsSep " " (flattenAttrEntries "=" anim.spring)}"];
  in
    concatStringsSep "\n" (map lib.trim vals);

  flattenAnim = _: value:
    concatStringsSep "\n"
    (lib.mapAttrsToList (
        key: value:
          if key == "kind"
          then animationToKDL key value
          else utils.primitiveToKDL {} key value
      )
      value);

  scrollFactorToKDL = name: value: "${name} ${
    if value.base != null
    then toKDLString value.base
    else concatStringsSep " " (flattenAttrEntries "=" value)
  }";

  inlineProperties = name: value: "${name} ${concatStringsSep " " (flattenAttrEntries "=" value)}";

  presetSize = name: value: let
    sections = lib.flatten (
      map (flattenAttrEntries " ")
      value
    );
  in ''
    ${name} {
    ${sectionsToString (map indentSection sections)}
    }
  '';

  outputToKDL = name: value: let
    children =
      lib.mapAttrsToList (
        utils.primitiveToKDL {
          overrides = {
            inherit layout;
          };
        }
      )
      value;
  in ''
    ${name} "${value.name}" {
    ${sectionsToString (map indentSection children)}
    }
  '';

  background-effect = {
    blur = toBoolArg;
    xray = toBoolArg;
  };

  geometry-corner-radius = cornerRadiusToKDL;

  shadow = {
    offset = inlineProperties;
    draw-behind-window = toBoolArg;
  };

  gradient = {
    active-gradient = inlineProperties;
    inactive-gradient = inlineProperties;
    urgent-gradient = inlineProperties;
  };

  border = {
    inherit (gradient) active-gradient inactive-gradient urgent-gradient;
  };

  focus-ring = {
    inherit (gradient) active-gradient inactive-gradient urgent-gradient;
  };
  tab-indicator = {
    inherit (gradient) active-gradient inactive-gradient urgent-gradient;
    length = inlineProperties;
  };
  insert-hint = {
    gradient = inlineProperties;
  };

  layout = {
    inherit shadow border focus-ring tab-indicator insert-hint;
    preset-window-heights = presetSize;
    preset-column-widths = presetSize;
  };
in rec {
  inherit layout;

  animations = {
    workspace-switch.kind = animationToKDL;
    window-open.anim = flattenAnim;
    window-close.anim = flattenAnim;
    horizontal-view-movement.kind = animationToKDL;
    window-movement.kind = animationToKDL;
    window-resize.anim = flattenAnim;
    config-notification-open-close.kind = animationToKDL;
    exit-confirmation-open-close.kind = animationToKDL;
    screenshot-ui-open.kind = animationToKDL;
    overview-open-close.kind = animationToKDL;
    recent-windows-close.kind = animationToKDL;
  };

  spawn-at-startup = spawnAtStartupToKDL;
  spawn-sh-at-startup = spawnAtStartupToKDL;

  window-rules.window-rule = {
    inherit background-effect geometry-corner-radius shadow border focus-ring tab-indicator insert-hint;
    clip-to-geometry = toBoolArg;
    matches = matchToKDL;
  };

  layer-rules.layer-rule = {
    inherit background-effect geometry-corner-radius shadow;
    baba-is-float = toBoolArg;
    place-within-backdrop = toBoolArg;
    popups = {
      inherit background-effect geometry-corner-radius;
    };
    excludes = _: matchToKDL "exclude";
    matches = _: matchToKDL "match";
  };

  workspaces.workspace = {
    inherit layout;
  };

  outputs.output = outputToKDL;
  # outputs.output = {
  #   inherit layout;
  # };

  binds = bindsToKDL;

  input = {
    warp-mouse-to-focus = inlineProperties;
    focus-follows-mouse = inlineProperties;
    mouse.scroll-factor = scrollFactorToKDL;
    touchpad = {
      scroll-factor = scrollFactorToKDL;
      drag = toBoolArg;
    };
  };

  debug = {
    ignored-drm-devices = _: devices:
      concatStringsSep "\n" (
        map (dev: "ignore-drm-device ${toKDLString dev}")
        devices
      );
  };
}
