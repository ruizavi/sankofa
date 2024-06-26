{
  config,
  lib,
  inputs,
  pkgs,
  ...
}: {


  programs.nix-ld.enable = true;

  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep-since 30d";
    };
    flake = "/home/avi/Desktop/sankofa";
  };

  nix = {
    registry = lib.mapAttrs (_: v: {flake = v;}) inputs;
    nixPath = lib.mapAttrsToList (key: _: "${key}=flake:${key}") config.nix.registry;

    settings = {
      auto-optimise-store = true;
      builders-use-substitutes = true;
      experimental-features = ["nix-command" "flakes"];
      flake-registry = "/etc/nix/registry.json";
      keep-derivations = true;
      keep-outputs = true;
      trusted-users = ["root" "@wheel"];
    };
  };

  nixpkgs = {
    config.allowUnfree = true;
    config.permittedInsecurePackages = [
      "electron-25.9.0"
      "freeimage-unstable-2021-11-01"
    ];

    overlays = [
      inputs.catppuccin-vsc.overlays.default
      inputs.rust-overlay.overlays.default
      inputs.nix-vscode-extensions.overlays.default
      inputs.nur.overlay
      inputs.nixd.overlays.default
    ];
  };

  environment.systemPackages = with pkgs; [
    git
    nixd
];

  system.stateVersion = lib.mkDefault "23.11";
}
