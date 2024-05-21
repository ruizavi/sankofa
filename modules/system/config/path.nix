{pkgs, ...}: {
  environment = {
    variables = {
      TERMINAL = "kitty";
    };

    systemPackages = with pkgs; [
      git
      neovim
      starship
      vim
    ];
  };
}
