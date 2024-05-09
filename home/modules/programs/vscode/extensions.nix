{pkgs, ...}: {
  programs.vscode = {
    mutableExtensionsDir = true;
    extensions =
      (with pkgs.vscode-extensions; [
        github.vscode-github-actions
        github.vscode-pull-request-github
      ])
      ++ (with pkgs.vscode-marketplace; [
        antfu.icons-carbon
        bradlc.vscode-tailwindcss
        pkief.material-icon-theme
        christian-kohler.path-intellisense
        dbaeumer.vscode-eslint
        editorconfig.editorconfig
        esbenp.prettier-vscode
        jnoortheen.nix-ide
        llvm-vs-code-extensions.vscode-clangd
        mikestead.dotenv
        mkhl.direnv
        ms-python.black-formatter
        ms-python.isort
        ms-python.pylint
        ms-python.python
        ms-python.vscode-pylance
        ms-vscode.cpptools
        ms-toolsai.jupyter
        ms-toolsai.jupyter-renderers
        ms-toolsai.jupyter-keymap
        ms-toolsai.vscode-jupyter-cell-tags
        ms-toolsai.vscode-jupyter-slideshow
        naumovs.color-highlight
        usernamehw.errorlens
        xaver.clang-format
        yzhang.markdown-all-in-one
      ])
      ++ (with pkgs.vscode-marketplace-release; [
        eamodio.gitlens
        vadimcn.vscode-lldb
      ])
      ++ [
        (pkgs.catppuccin-vsc.override {
          accent = "mauve";
          boldKeywords = true;
          italicComments = true;
          italicKeywords = true;
          extraBordersEnabled = false;
          workbenchMode = "default";
          bracketMode = "rainbow";
          colorOverrides = {};
          customUIColors = {};
        })
      ];
  };
}
