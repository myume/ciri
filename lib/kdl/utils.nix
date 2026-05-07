{lib}: rec {
  indentSection = section:
    lib.pipe section [
      (lib.splitString "\n")
      (builtins.filter (line: line != ""))
      (map (line: "\t${line}\n"))
      (builtins.concatStringsSep "")
    ];

  filterNulls = builtins.filter (ele: ele != null);

  sectionsToString = sections:
    lib.pipe sections [
      filterNulls
      (map (lib.removeSuffix "\n"))
      (builtins.concatStringsSep "\n")
    ];
  # TODO: use pipes when they become stable
  # sections
  # |> builtins.filter (sec: sec != null)
  # |> map (lib.removeSuffix "\n")
  # |> builtins.concatStringsSep "\n";

  mapNull = f: nullable:
    if nullable != null
    then f nullable
    else null;

  primitiveToKDL = {
    overrides ? {},
    path ? "",
  }: name: value: let
    currentPath =
      if path != ""
      then path + "." + name
      else name;
    handlers = {
      "string" = name: value: ''${name} "${value}"'';
      "bool" = name: _: "${name}";
      "int" = name: value: "${name} ${toString value}";
      "float" = name: value: "${name} ${toString value}";
      "set" = name: value: sectionToKDL name overrides value currentPath;
      "list" = name: value:
      # best effort estimate for a list, will probably need to override in the general case
        if value != []
        then let
          sections =
            map (
              primitiveToKDL {
                inherit overrides;
                path = currentPath;
              }
              "[]" # not sure if i like using this special symbol, but we'll live with it for now
            )
            value;
        in ''
          ${name} {
          ${sectionsToString sections}
          }
        ''
        else null;
    };
    override =
      overrides.${
        currentPath
      } or null;
    handler =
      if builtins.isFunction override && value != null
      then override
      else handlers."${lib.typeOf value}" or (_: _: null);
  in
    handler name value;

  sectionToKDL = name: overrides: cfg: path: let
    sections =
      lib.mapAttrsToList (primitiveToKDL {
        inherit overrides path;
      })
      cfg;
    kdl = sectionsToString (map (mapNull indentSection) sections);
  in
    if name == "[]"
    then kdl
    else ''
      ${name} {
      ${kdl}
      }
    '';
}
