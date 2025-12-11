{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Cli
    vim
    wget
    lazygit
    fastfetch
    nix-search-tv
    pciutils
    tmux

    # Themes
    adw-gtk3
    tela-icon-theme

    # Gui
    gnome-tweaks
    ptyxis
    gnome-extension-manager

    # Gnome extensions
    gnomeExtensions.blur-my-shell
    gnomeExtensions.just-perfection
    gnomeExtensions.weather-oclock
    gnomeExtensions.appindicator
    gnomeExtensions.unblank
    gnomeExtensions.system-monitor

    # Java
    jdk8
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
