{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "float, rofi"
    ];
    windowrulev2 = [
      # only allow shadows for floating windows

      "noshadow, floating:0"

      "float,class:udiskie"

      # wlogout
      "fullscreen,class:wlogout"
      "fullscreen,title:wlogout"
      "noanim, title:wlogout"

      # spotify
      "tile, title:Spotify"
      "tile, class:^(Spotify)$"

      # firefox
      "idleinhibit fullscreen, class:^(firefox)$"
      "float,title:^(Firefox — Sharing Indicator)$"
      "move 0 0,title:^(Firefox — Sharing Indicator)$"
      "float, title:^(Picture-in-Picture)$"
      "pin, title:^(Picture-in-Picture)$"

      # pavucontrol
      "float,class:pavucontrol"
      "float,title:^(Volume Control)$"
      "size 800 600,title:^(Volume Control)$"
      "move 75 44%,title:^(Volume Control)$"
      "float, class:^(imv)$"

      # throw sharing indicators away
      "workspace special silent, title:^(Firefox — Sharing Indicator)$"
      "workspace special silent, title:^(.*is sharing (your screen|a window)\.)$"

      "opacity 0.70 0.70,class:^(Spotify)$"
      "opacity 0.80 0.70,class:^(nm-applet)$"
      "opacity 0.80 0.70,class:^(nm-connection-editor)$"

      "float,class:^(firefox)$,title:^(Picture-in-Picture)$"
      "float,class:^(firefox)$,title:^(Library)$"
    ];
  };
}
