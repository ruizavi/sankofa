{ pkgs, ... }: {
  home.packages = with pkgs; [ hyprpaper ];

  xdg.configFile."hypr/wall.png" = {
    source = ./wall.png;
  };

  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = $HOME/.config/hypr/wall.png
    wallpaper = $HOME/.config/hypr/wall.png
    ipc=true
    splash=false
  '';
}
