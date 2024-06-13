{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
  ];

  boot = {

   kernelPackages = pkgs.linuxKernel.packages.linux_6_9;

    initrd = {
      systemd.enable = true;
      supportedFilesystems = ["ext4"];
    };

    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
        configurationLimit = 5;
        gfxmodeEfi = "1920x1080";
      };
    };

    plymouth.enable = true;
  };

  nixpkgs.config.qt5 = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    acpi
    alsa-utils
    mesa
    vulkan-tools
    vulkan-loader
    vulkan-validation-layers
    vulkan-extension-layer
  ];

  hardware.opengl = {
    enable = true;
    driSupport = true;
  };

  networking.hostName = "sankofa";

  services = {
    acpid.enable = true;
    auto-cpufreq.enable = true;
    fstrim.enable = true;

    upower = {
      enable = true;
      percentageLow = 30;
      percentageCritical = 20;
      percentageAction = 10;
      criticalPowerAction = "Hibernate";
    };
  };

  services.xserver = {
    layout = "us";
    xkbVariant = "intl";
  };

  console.keyMap = "us-acentos";

  sound.enable = true;
}
