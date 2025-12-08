{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    lazygit
    fastfetch

    tokyonight-gtk-theme
    tela-icon-theme

    nix-search-tv
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
