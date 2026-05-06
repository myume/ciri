{
  inputs.home-manager.url = "github:nix-community/home-manager";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    home-manager,
    nixpkgs,
  }: {
    homeConfigurations.test = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      modules = [
        ../hm-module.nix
        {
          home = {
            username = "test";
            homeDirectory = "/home/test";
            stateVersion = "25.11";
          };

          ciri = {
            enable = true;
          };
        }
      ];
    };
  };
}
