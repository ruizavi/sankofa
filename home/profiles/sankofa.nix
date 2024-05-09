{
  lib, pkgs, ...
}: {
  imports = [
    ../modules/programs/kitty.nix
    ../modules/programs/firefox.nix
    ../modules/programs/vscode

    ../modules/config/gtk.nix
    ../modules/config/home-cursor.nix
  ];

  home = {
    packages = lib.attrValues { 
      inherit
        (pkgs)
        curl
        killall
        neofetch
        p7zip
        ripgrep
        rsync
        ttyper
        wget
        ;
        # GUI
      inherit
        (pkgs)
        zathura
        obsidian
        ;
    };
  };


}