{
  description = "A nix flake starter";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";

  outputs = {
    self,
    nixpkgs,
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
      ciri = import ./modules/hm-module.nix;
    };
  };
}
