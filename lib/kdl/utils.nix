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
    };
    override =
      overrides.${
        currentPath
      } or null;
    handler =
      if builtins.isFunction override
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
  in ''
    ${name} {
    ${sectionsToString (map (mapNull indentSection) sections)}
    }
  '';
}
