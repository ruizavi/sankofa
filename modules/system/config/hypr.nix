{pkgs, ...}: {
  imports = [
    ./greetd.nix
  ];

  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };

    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-dropbox-plugin
        thunar-media-tags-plugin
        thunar-volman
      ];
    };
  };

  security = {
    # allow wayland lockers to unlock the screen
    pam.services.hyprlock.text = "auth include login";
  };
}
