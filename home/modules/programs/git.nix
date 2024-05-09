{pkgs, ...}: {
  home.packages = with pkgs; [
    gitflow
  ];

  programs = {
    git = {
      enable = true;
      package = pkgs.gitAndTools.gitFull;
      lfs.enable = true;
      delta.enable = true;

      userName = "avi";
      userEmail = "avi.ruiz@proton.com";

      aliases = {
        a = "add";
        b = "branch";
        br = "branch";
        c = "commit";
        ca = "commit --amend";
        cm = "commit -m";
        d = "diff";
        ds = "diff --staged";
        fuck = "commit --amend -m";
        graph = "log --all --decorate --graph --oneline";
        hist = "log --pretty=format:\"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)\" --graph --date=relative --decorate --all";
        l = "log";
        llog = "log --graph --name-status --pretty=format:\"%C(red)%h %C(reset)(%cd) %C(green)%an %Creset%s %C(yellow)%d%Creset\" --date=relative";
        p = "push";
        r = "rebase";
        s = "status --short";
        ss = "status";
        st = "status";
      };

      extraConfig = {
        init.defaultBranch = "main";
        branch.autosetupmerge = "true";
        push.default = "current";
        merge.stat = "true";
        core.whitespace = "fix,-indent-with-non-tab,trailing-space,cr-at-eol";
        repack.usedeltabaseoffset = "true";
        pull.ff = "only";
        rebase = {
          autoSquash = true;
          autoStash = true;
        };
        rerere = {
          enabled = true;
          autoupdate = true;
        };
      };

      ignores = [
        "*~"
        "*.swp"
        "*result*"
        ".direnv"
        "node_modules"
      ];
    };
  };
}
