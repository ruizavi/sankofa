{
  lib,
  pkgs,
  ...
}: {
  system.activationScripts.binbash = {
    deps = ["binsh"];
    text = ''
      ln -s /bin/sh /bin/bash
    '';
  };

  programs.bash = {
    promptInit = ''eval "$(${lib.getExe pkgs.starship} init bash)"'';
  };
}
