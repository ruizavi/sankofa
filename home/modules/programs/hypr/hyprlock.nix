{themes, ...}: {
  programs.hyprlock = {
    enable = true;

    general = {
      disable_loading_bar = false;
      hide_cursor = true;
      grace = 2;
      no_fade_in = false;
    };

    backgrounds = [
      {
        path = "";
        color = "rgba(0, 0, 0, 0.5)";
        blur_size = 16;
        blur_passes = 3; # 0 disables blurring
        noise = 0.0117;
        contrast = 1.3000; # Vibrant!!!
        brightness = 0.8000;
        vibrancy = 0.2100;
        vibrancy_darkness = 0.0;
      }
    ];

    input-fields = let
      inherit (themes.colorscheme) xcolors;
    in [
      {
        size = {
          width = 250;
          height = 50;
        };
        outline_thickness = 3;
        dots_size = 0.26; # Scale of input-field height, 0.2 - 0.8
        dots_spacing = 0.64; # Scale of dots' absolute size, 0.0 - 1.0
        dots_center = true;
        outer_color = xcolors.gray2;
        inner_color = xcolors.gray2;
        font_color = xcolors.white;
        fade_on_empty = true;
        placeholder_text = "<i>Password...</i>"; # Text rendered in the input box when it's empty.
        hide_input = false;

        position = {
          x = 0;
          y = 72;
        };
        halign = "center";
        valign = "bottom";
      }
    ];

    labels = let
      inherit (themes.colorscheme) xcolors;
    in [
      {
        text = ''cmd[update:1000] echo "<b><big> $(date +"%H:%M:%S") </big></b>"'';
        color = xcolors.white;
        font_size = 64;
        font_family = "JetBrains Mono Nerd Font 10";
        shadow_passes = 3;
        shadow_size = 4;
        position = {
          x = 0;
          y = 16;
        };
        halign = "center";
        valign = "center";
        # text = "<b>$TIME</b>";
        # color = "rgb(255, 255, 255)";
        # font_size = 96;
        # position = {
        #   x = 0;
        #   y = 0;
        # };
        # halign = "center";
        # valign = "top";
      }
      {
        # text = ''cmd[update:1000] echo "$(date "+%a %d %b")"'';
        # color = "rgb(255, 255, 255)";
        # font_size = 24;
        # position = {
        #   x = 0;
        #   y = -150;
        # };
        # halign = "center";
        # valign = "top";
        text = ''cmd[update:18000000] echo "<b> "$(date +'%A, %-d %B %Y')" </b>"'';
        color = xcolors.white;
        font_size = 24;
        font_family = "JetBrains Mono Nerd Font 10";

        position = {
          x = 0;
          y = -16;
        };
        halign = "center";
        valign = "center";
      }
      {
        text = "Hi there, <i>$USER</i>!";
        color = xcolors.white;
        font_size = 18;
        font_family = "Inter Display Medium";

        position = {
          x = 0;
          y = 30;
        };
        halign = "center";
        valign = "bottom";
      }
      # {
      #   text = "";
      #   color = "rgb(255, 255, 255)";
      #   font_family = "monospace";
      #   font_size = 32;
      #   position = {
      #     x = 0;
      #     y = 0;
      #   };
      #   halign = "center";
      #   valign = "bottom";
      # }
    ];
  };
}
