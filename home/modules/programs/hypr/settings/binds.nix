{pkgs, ...}: {
  wayland.windowManager.hyprland.settings = {
    "$MOD" = "SUPER";

    bind = [
      ''$MOD, Return, exec, ${pkgs.kitty}/bin/kitty''
      ''$MOD, Space, exec, ${pkgs.killall} rofi || $HOME/.config/hypr/scripts/launcher.sh''
      "$MOD, Backspace, exec, $HOME/.config/hypr/scripts/wlogout.sh"
      "$MOD, Delete, exit,"
      "$MOD, Q, killactive"

      "$MOD, 1, workspace, 1"
      "$MOD, 2, workspace, 2"
      "$MOD, 3, workspace, 3"
      "$MOD, 4, workspace, 4"
      "$MOD, 5, workspace, 5"
      "$MOD, 6, workspace, 6"
      "$MOD, 7, workspace, 7"
      "$MOD, 8, workspace, 8"
      "$MOD, 9, workspace, 9"
      "$MOD, 0, workspace, 10"

      "$MOD+Ctrl, Right, workspace, r+1"
      "$MOD+Ctrl, Left, workspace, r-1"

      "$MOD+Shift, 1, movetoworkspace, 1"
      "$MOD+Shift, 2, movetoworkspace, 2"
      "$MOD+Shift, 3, movetoworkspace, 3"
      "$MOD+Shift, 4, movetoworkspace, 4"
      "$MOD+Shift, 5, movetoworkspace, 5"
      "$MOD+Shift, 6, movetoworkspace, 6"
      "$MOD+Shift, 7, movetoworkspace, 7"
      "$MOD+Shift, 8, movetoworkspace, 8"
      "$MOD+Shift, 9, movetoworkspace, 9"
      "$MOD+Shift, 0, movetoworkspace, 10"

      "$MOD+Alt, S, movetoworkspacesilent, special"
      "$MOD, S, togglespecialworkspace,"

      "$MOD, Left, movefocus, l"
      "$MOD, Right, movefocus, r"
      "$MOD, Up, movefocus, u"
      "$MOD, Down, movefocus, d"
      "Alt, Tab, movefocus, d"
      # Toggle focused window split
      "$MOD, J, togglesplit"

      "$MOD, W, togglefloating," # toggle the window between focus and float
      "$MOD, G, togglegroup," # toggle the window between focus and group
      "Alt, Return, fullscreen, " # toggle the window between focus and fullscreen
    ];

    binde = [
      "$MOD+Shift, Right, resizeactive, 30 0"
      "$MOD+Shift, Left, resizeactive, -30 0"
      "$MOD+Shift, Up, resizeactive, 0 -30"
      "$MOD+Shift, Down, resizeactive, 0 30"
    ];

    bindl = [
      '', XF86AudioMute, exec, $HOME/.config/hypr/scripts/volumecontrol.sh -o m''
      '', XF86AudioMicMute, exec, $HOME/.config/hypr/scripts/volumecontrol.sh -i m''
    ];

    bindel = [
      '', XF86AudioLowerVolume, exec, $HOME/.config/hypr/scripts/volumecontrol.sh -o d''
      '', XF86AudioRaiseVolume, exec, $HOME/.config/hypr/scripts/volumecontrol.sh -o i''
      " , XF86MonBrightnessUp, exec, $HOME/.config/hypr/scripts/brightnesscontrol.sh i"
      " , XF86MonBrightnessDown, exec, $HOME/.config/hypr/scripts/brightnesscontrol.sh d"
    ];
  };
}
