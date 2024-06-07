{
  imports = [
    ./networking.nix
    ./openssh.nix
    ./pipewire.nix
    ./gnome.nix
  ];

  virtualisation.docker.enable = true;
virtualisation.docker.rootless = {
  enable = true;
};

}
