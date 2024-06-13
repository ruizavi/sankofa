{
  imports = [
    ./modules
    ../hosts
    ../lib
    ../home
    ../pkgs
  ];

  systems = ["x86_64-linux"];

  perSystem = {
    config,
    pkgs,
    ...
  }: {
    devShells.default = pkgs.mkShell {
      packages = with pkgs; [
        alejandra
        deadnix
        git
        nil
      ];

      name = "sankofa";
      meta.description = "The default development shell";

      DIRENV_LOG_FORMAT = "";
      shellHook = ''
        ${config.pre-commit.installationScript}
      '';
    };

    formatter = pkgs.alejandra;
  };
}
