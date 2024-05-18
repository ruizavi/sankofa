{
  networking = {
    networkmanager = {
      enable = true;
    };
  };

  programs = {
    nm-applet.enable = true;
  };

  environment.etc.hosts.mode = "0644";
}
