{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./python.nix
    ./rust.nix
    ./security.nix
  ];
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
        zls
        bun
        nodejs
        typescript
        biome
        rust-analyzer
        # warp-terminal
        
        dbeaver
        gh
        ;

      inherit
        (pkgs.nodePackages)
        jsonlint
        pnpm
        prettier
        prisma
        typescript-language-server
        vscode-langservers-extracted
        ;
    };
  };

  home.sessionVariables = with pkgs; {
    PRISMA_SCHEMA_ENGINE_BINARY = "${prisma-engines}/bin/schema-engine";
    PRISMA_QUERY_ENGINE_BINARY = "${prisma-engines}/bin/query-engine";
    PRISMA_QUERY_ENGINE_LIBRARY = "${prisma-engines}/lib/libquery_engine.node";
    PRISMA_INTROSPECTION_ENGINE_BINARY = "${prisma-engines}/bin/introspection-engine";
    PRISMA_FMT_BINARY = "${prisma-engines}/bin/prisma-fmt";
  };
}
