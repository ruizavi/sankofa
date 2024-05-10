{
  imports = [
    ./networking.nix
    ./openssh.nix
    ./pipewire.nix
  ];

  virtualisation.docker.enable = true;
virtualisation.docker.rootless = {
  enable = true;
};

}
