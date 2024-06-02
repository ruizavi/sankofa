{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ../modules/programs/kitty.nix
    ../modules/programs/firefox.nix
    ../modules/programs/vscode
    ../modules/programs/hypr
    ../modules/programs/anyrun
    ../modules/programs/ags
    ../modules/programs/wlogout
    # ../modules/programs/rofi.nix
    ../modules/dev

    ../modules/config/gtk.nix
    ../modules/config/home-cursor.nix
  ];

  home = {
    packages = lib.attrValues {
      inherit
        (pkgs)
        jq
        pamixer
        brightnessctl
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
        keepassxc
        spotify
        discord
        ;
    };
  };
}
