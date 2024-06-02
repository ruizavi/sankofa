{
  imports = [
    ./settings
    ./hyprlock.nix
    ./swayidle.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    extraConfig = ''
      monitor = ,preferred,auto,1

      general {
          gaps_in = 3
          gaps_out = 8
          border_size = 2
          col.active_border = rgba(eb6f92ff) rgba(c4a7e7ff) 45deg
          col.inactive_border = rgba(31748fcc) rgba(9ccfd8cc) 45deg
          layout = dwindle
          resize_on_border = true
      }

      group {
          col.border_active = rgba(eb6f92ff) rgba(c4a7e7ff) 45deg
          col.border_inactive = rgba(31748fcc) rgba(9ccfd8cc) 45deg
          col.border_locked_active = rgba(eb6f92ff) rgba(c4a7e7ff) 45deg
          col.border_locked_inactive = rgba(31748fcc) rgba(9ccfd8cc) 45deg
      }

      decoration {
          rounding = 10
          drop_shadow = false

          blur {
              enabled = yes
              size = 6
              passes = 3
              new_optimizations = on
              ignore_opacity = on
              xray = false
          }
      }

      layerrule = blur,rofi
      layerrule = ignorezero,rofi
      layerrule = blur, logout_dialog
    '';
  };
}
