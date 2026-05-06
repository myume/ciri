{lib}: let
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

  input = import ./input.nix {
    inherit lib mapNull sectionsToString indentSection;
  };
in {
  configToKDL = config: let
    sections = [
      (mapNull input.toKDL config.input)
      (
        mapNull
        (p: ''screenshot-path "${p}"'')
        config.screenshot_path
      )
    ];
  in ''
    ${sectionsToString sections}
  '';
}
