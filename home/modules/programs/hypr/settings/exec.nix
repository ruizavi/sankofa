{
  lib,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "nm-applet --indicator"
      "${lib.getExe pkgs.swaybg} -i ${../wall.png}"
      "${pkgs.hyprpaper}/bin/hyprpaper"
      "ags"
    ];
  };
}
