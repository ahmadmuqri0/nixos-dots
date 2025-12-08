{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Cli
    vim
    wget
    lazygit
    fastfetch
    nix-search-tv

    # Themes
    adw-gtk3
    tela-icon-theme

    # Gui
    gnome-tweaks
    ptyxis
    gnome-extension-manager
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
