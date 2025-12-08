{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    ripgrep
    fd

    # Language Servers
    lua-language-server
    nixd
    stylua
    nixfmt-rfc-style

    # Needed for neovim
    clang
    go
  ];

  nix.nixPath = [ "nixpkg=${inputs.nixpkgs}" ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
  };
}
