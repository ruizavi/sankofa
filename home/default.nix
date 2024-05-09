{
  inputs,
  lib,
  ...
}: let
  sharedModules = [
    ./modules/programs/zsh.nix
    ./modules/programs/git.nix
    ./modules/programs/utils.nix
    ./modules/programs/starship.nix
    ./modules/programs/ssh.nix
    ./modules/programs/gpg.nix
  ];

  homeImports = {
    "avi@sankofa" =
      [
        ./home.nix
        ./profiles/sankofa.nix
      ]
      ++ lib.concatLists [sharedModules];
  };

  inherit (inputs.home-manager.lib) homeManagerConfiguration;
  pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
in {
  _module.args = {inherit homeImports;};

  flake = {
    homeConfigurations = {
      "avi@sankofa" = homeManagerConfiguration {
        inherit pkgs;
        modules = homeImports."avi@sankofa";
      };
    };
  };
}
