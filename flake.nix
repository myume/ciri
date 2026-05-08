{
  description = "Ciri nix flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
  inputs.home-manager.url = "github:nix-community/home-manager";

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  }: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (
        system: function nixpkgs.legacyPackages.${system}
      );
  in {
    packages = forAllSystems (pkgs: let
      inherit (pkgs.stdenv.hostPlatform) system;
    in {
      ciri = pkgs.callPackage ./nix/package.nix {};
      default = self.packages.${system}.ciri;
    });

    devShells = forAllSystems (pkgs: {
      default = pkgs.callPackage ./nix/shell.nix {};
    });

    homeManagerModules = {
      default = self.homeManagerModules.ciri;
      ciri = import ./nix/home-manager;
    };

    checks = forAllSystems (pkgs: {
      check-niri-types = let
        hm = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            self.homeManagerModules.default
            ./nix/tests/example-config.nix
            {
              home = {
                username = "test";
                homeDirectory = "/home/test";
                stateVersion = "25.11";
              };
            }
          ];
        };
      in
        pkgs.writeText "niri-config"
        hm.config.xdg.configFile."niri/config.kdl".text;
    });
  };
}
