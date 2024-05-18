{pkgs, ...}: {
  home.file = {
    ".config/hypr/scripts/launcher.sh" = {
      executable = true;
      text = ''
        ${pkgs.rofi}/bin/rofi \
        -show drun \
        -theme $HOME/.config/hypr/themes/launcher.rasi
      '';
    };
  };
}
