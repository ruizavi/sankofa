{pkgs, ...}: {
  home.file = {
    ".config/hypr/scripts/volumecontrol.sh" = {
      executable = true;
      source = ./volume.sh;
    };
  };
}
