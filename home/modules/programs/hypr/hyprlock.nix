{pkgs, ...}:{

  home.packages = with pkgs; [hyprlock];

  xdg.configFile."hypr/hyprlock.conf".text = ''
    general {
      disable_loading_bar = false
      hide_cursor = true
      grace = 2
      no_fade_in = false
    }

     background {
        path = ""
        color = rgba(0, 0, 0, 0.5)

        # Blur
        blur_passes = 3 # 0 disables blurring
        blur_size = 10
        noise = 0.0117
        contrast = 0.8916
        brightness = 0.8172
        vibrancy = 0.1696
        vibrancy_darkness = 0.0
      }

      input-field {
        size = 300, 50
        outline_thickness = 3
        dots_size = 0.33
        dots_spacing = 0.15
        dots_center = true
        outer_color = rgba(255, 255, 255, 0.1)
        inner_color = rgba(255, 255, 255, 0.1)
        font_color = rgb(255, 255, 255)
        fade_on_empty = true
        placeholder_text = <i>Input Password...</i>
        hide_input = false
        position = 0, -90
        halign = center
        valign = center
      }

      label {
        text = <b>$TIME</b>
        color = rgb(255, 255, 255)
        font_size = 96
        position = 0, 0
        halign = center
        valign = top
      }
      label {
        text = cmd[update:1000] echo "$(date "+%a %d %b")"
        color = rgb(255, 255, 255)
        font_size = 24
        position = 0, -150
        halign = center
        valign = top
      }
      label {
        text = Hi there, <i>$USER</i>!
        color = rgb(255, 255, 255)
        font_size = 32
        position = 0, 0
        halign = center
        valign = center
      }
      label {
        text = 
        color = rgb(255, 255, 255)
        font_family = monospace
        font_size = 32
        position = 0, 25
        halign = center
        valign = bottom
      }
  '';
}
