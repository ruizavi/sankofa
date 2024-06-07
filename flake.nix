{
  description = "Avi's NixOS Configuration";

  outputs = inputs: inputs.flake-parts.lib.mkFlake {inherit inputs;} {imports = [./flake];};

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
    nix-vscode-extensions.inputs.flake-utils.follows = "flake-utils";
    nix-vscode-extensions.inputs.nixpkgs.follows = "nixpkgs";
    hyprlock.url = "github:hyprwm/hyprlock";
    anyrun.url = "github:Kirottu/anyrun";
    rust-overlay.url = "github:oxalica/rust-overlay";
    nixd.url = "github:nix-community/nixd";
    spicetify-nix.url = "github:the-argus/spicetify-nix";
    flake-utils.url = "github:numtide/flake-utils";
    catppuccin-vsc.url = "github:catppuccin/vscode";
    ags.url = "github:Aylur/ags";
    catppuccin = {
      url = "github:catppuccin/nix";
    };

    nur = {
      url = "github:nix-community/NUR";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
