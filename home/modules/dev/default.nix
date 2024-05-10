{
  lib,
  pkgs,
  ...
}: {
  home = {
    packages = lib.attrValues {
      # DEV Tools
      inherit
        (pkgs)
        alejandra
        ccls
        clang
        clang-tools
        cmake
        zig
        bun
        nodejs
        typescript
        ;

      inherit
        (pkgs.nodePackages)
        jsonlint
        pnpm
        prettier
        typescript-language-server
        ;
    };
  };
}
