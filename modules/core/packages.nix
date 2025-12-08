{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    lazygit
    fastfetch

    adw-gtk3
    tela-icon-theme

    nix-search-tv
    gnome-tweaks
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
