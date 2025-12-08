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
    gnome-tweaks
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
