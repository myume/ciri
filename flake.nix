{
  description = "Ciri nix flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    ndg.url = "github:feel-co/ndg";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ndg,
    ...
  }: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (
        system: function nixpkgs.legacyPackages.${system}
      );
  in {
    packages = forAllSystems (pkgs: let
      inherit (pkgs.stdenv.hostPlatform) system;

      inherit (pkgs) lib;
      eval = lib.evalModules {
        modules = [./nix/home-manager/options.nix];
      };
      optionsDoc = pkgs.nixosOptionsDoc {
        inherit (eval) options;
        warningsAreErrors = false;
        transformOptions = opt:
          opt
          // {
            name = lib.removePrefix "programs.niri." opt.name;
            declarations =
              map (decl: let
                filepath = lib.removePrefix (toString ./. + "/") (toString decl);
              in {
                url = "https://github.com/myume/ciri/blob/main/${filepath}";
                name = filepath;
              })
              opt.declarations;

            visible = opt.visible && !lib.hasPrefix "_" opt.name;
          };
      };
    in {
      docs =
        pkgs.runCommandLocal "project-docs" {
          nativeBuildInputs = [
            (ndg.packages.${system}.ndg. overrideAttrs {
              doCheck = false;
            })
          ];
        } ''
          mkdir -p $out
          ndg \
            --config-file ${./docs/ndg.toml} \
            html \
            --input-dir ${./docs} \
            --output-dir $out \
            --module-options ${optionsDoc.optionsJSON}/share/doc/nixos/options.json \
            --jobs $NIX_BUILD_CORES
        '';

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
      validate-types = let
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
        config-file =
          pkgs.writeText "niri-config"
          hm.config.xdg.configFile."niri/config.kdl".text;
      in
        pkgs.runCommand "validate-config"
        {
          nativeBuildInputs = [pkgs.niri];
        } ''
          niri validate --config ${config-file}
          touch $out
        '';
    });
  };
}
