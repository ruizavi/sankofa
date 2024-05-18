{pkgs, ...}: {
  home.file = {
    ".config/hypr/themes/launcher.rasi" = {
      executable = true;
      text = ''
        configuration {
        	modi:                       "drun,run,filebrowser,window";
            show-icons:                 true;
            display-drun:               "";
            display-run:                "";
            display-filebrowser:        "";
            display-window:             "";
        	drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
        	window-format:              "{w}   {c}   {t}";
        }

        * {
            font:                        "Iosevka Nerd Font 10";
        }

        window {
            /* properties for window widget */
            transparency:                "real";
            location:                    center;
            anchor:                      center;
            fullscreen:                  false;
            width:                       800px;
            x-offset:                    0px;
            y-offset:                    0px;

            enabled:                     true;
            margin:                      0px;
            padding:                     0px;
            border-radius:               20px;
            cursor:                      "default";
            background-color:            #22272C;
        }

        mainbox {
            enabled:                     true;
            spacing:                     25px;
            padding:                     50px;
            background-color:            transparent;
            children:                    [ "inputbar", "message","listview", "mode-switcher" ];
        }

        inputbar {
            enabled:                     true;
            spacing:                     0px;
            margin:                      0px 200px;
            padding:                     5px;
            border:                      1px;
            border-radius:               100%;
            border-color:                gray/25%;
            background-color:            transparent;
            children:                    [ "textbox-prompt-colon", "entry" ];
        }

        textbox-prompt-colon {
            enabled:                     true;
            expand:                      false;
            padding:                     8px 11px;
            border-radius:               100%;
            background-color:            white;
            text-color:                  black;
            str:                         "";
        }
        entry {
            enabled:                     true;
            padding:                     8px 12px;
            border:                      0px;
            background-color:            transparent;
            text-color:                  white;
            cursor:                      text;
            placeholder:                 "Search...";
            placeholder-color:           inherit;
            vertical-align:              0.5;
            horizontal-align:            0.0;
        }

        listview {
            enabled:                     true;
            columns:                     2;
            lines:                       10;
            cycle:                       true;
            dynamic:                     true;
            scrollbar:                   false;
            layout:                      vertical;
            reverse:                     false;
            fixed-height:                true;
            fixed-columns:               true;

            spacing:                     10px;
            background-color:            transparent;
            cursor:                      "default";
        }

        element {
            enabled:                     true;
            spacing:                     10px;
            margin:                      0px;
            padding:                     5px;
            border:                      0px;
            border-radius:               100%;
            border-color:                gray/15%;
            background-color:            transparent;
            text-color:                  gray;
            cursor:                      pointer;
        }
        element normal.active {
            background-image:            linear-gradient(to right, #4C4F52, #2E343B);
            text-color:                  #19B466;
        }
        element selected.normal {
            background-image:            linear-gradient(to right, #4C4F52, #2E343B);
            text-color:                  #FF9030;
        }
        element selected.active {
            background-image:            linear-gradient(to right, #4C4F52, #2E343B);
            text-color:                  #EA5553;
        }
        element-icon {
            background-color:            transparent;
            size:                        24px;
            cursor:                      inherit;
        }
        element-text {
            background-color:            inherit;
            text-color:                  inherit;
            cursor:                      inherit;
            vertical-align:              0.5;
            horizontal-align:            0.0;
        }

        mode-switcher{
            enabled:                     true;
            expand:                      false;
            spacing:                     0px;
            margin:                      0px 200px;
            padding:                     12px;
            border-radius:               100%;
            background-color:            #2E343B;
        }
        button {
            background-color:            inherit;
            text-color:                  white;
            cursor:                      pointer;
        }
        button selected {
            background-color:            inherit;
            text-color:                  #FF9030;
        }

        error-message {
            padding:                     20px;
            background-color:            #22272C;
            text-color:                  white;
        }
        message {
            padding:                     0px;
            background-color:            inherit;
            text-color:                  #FF9030;
        }
        textbox {
            padding:                     0px;
            border-radius:               0px;
            background-color:            inherit;
            text-color:                  inherit;
            vertical-align:              0.5;
            horizontal-align:            0.0;
        }
      '';
    };
  };

  programs.rofi = {
    enable = true;
    terminal = "${pkgs.kitty}/bin/kitty";
  };
}
