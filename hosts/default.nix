{inputs, self, themes, homeImports, ...}: let
  inherit (inputs.nixpkgs.lib) nixosSystem;

  modules = "${self}/modules/system";
  hardware = modules + "/hardware";

  specialArgs = {inherit inputs self themes;};
in {
  flake.nixosConfigurations = {
    # HP Envy x360 AMD
    sankofa = nixosSystem {
      inherit specialArgs;

      modules = [
        ./sankofa

        "${modules}/config"
        "${modules}/programs"
        "${modules}/security"
        "${modules}/services"
        "${hardware}/bluetooth.nix"

        {
          home-manager = {
            users.avi.imports = homeImports."avi@sankofa";
            extraSpecialArgs = specialArgs;
          };
        }
      ];
    };
  };
}