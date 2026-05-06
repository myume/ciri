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

  primitiveToKDL = let
    handlers = {
      "string" = name: value: ''${name} "${value}"'';
      "bool" = name: _: "${name}";
      "int" = name: value: "${name} ${toString value}";
      "float" = name: value: "${name} ${toString value}";
      "set" = name: value: sectionToKDL name [] value;
    };
  in
    name: value: (
      handlers."${lib.typeOf value}" or (_: _: null)
      (builtins.replaceStrings ["_"] ["-"] name)
      value
    );

  sectionToKDL = name: extras: cfg: let
    sections = extras ++ (lib.mapAttrsToList primitiveToKDL cfg);
  in ''
    ${name} {
    ${sectionsToString (map (mapNull indentSection) sections)}
    }
  '';
}
