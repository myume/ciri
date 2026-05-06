{lib}: {
  indentSection = section:
    lib.pipe section [
      (lib.splitString "\n")
      (builtins.filter (line: line != ""))
      (map (line: "\t${line}\n"))
      (builtins.concatStringsSep "")
    ];

  sectionsToString = sections:
    lib.pipe sections [
      (builtins.filter (sec: sec != null))
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
}
