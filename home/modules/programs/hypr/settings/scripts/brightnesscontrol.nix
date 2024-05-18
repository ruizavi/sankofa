{pkgs, ...}: {
  home.file = {
    ".config/hypr/scripts/brightnesscontrol.sh" = {
      executable = true;
      text = ''
        #!/usr/bin/env sh

        function print_error
        {
        cat << "EOF"
            ./brightnesscontrol.sh <action>
            ...valid actions are...
                i -- <i>ncrease brightness [+5%]
                d -- <d>ecrease brightness [-5%]
        EOF
        }

        function get_brightness {
            ${pkgs.brightnessctl}/bin/brightnessctl -m | grep -o '[0-9]\+%' | head -c-2
        }

        case $1 in
        i)  # increase the backlight
            if [[ $(get_brightness) -lt 10 ]] ; then
                # increase the backlight by 1% if less than 10%
                ${pkgs.brightnessctl}/bin/brightnessctl set +1%
            else
                # increase the backlight by 5% otherwise
                ${pkgs.brightnessctl}/bin/brightnessctl set +5%
            fi
            ;;
        d)  # decrease the backlight
            if [[ $(get_brightness) -le 1 ]] ; then
                # avoid 0% brightness
                ${pkgs.brightnessctl}/bin/brightnessctl set 1%
            elif [[ $(get_brightness) -le 10 ]] ; then
                # decrease the backlight by 1% if less than 10%
                ${pkgs.brightnessctl}/bin/brightnessctl set 1%-
            else
                # decrease the backlight by 5% otherwise
                ${pkgs.brightnessctl}/bin/brightnessctl set 5%-
            fi
            ;;
        *)  # print error
            print_error ;;
        esac
      '';
    };
  };
}
