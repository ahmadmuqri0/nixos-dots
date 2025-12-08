{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    waybar
    kitty
    lazygit
    fastfetch

    nautilus

    ffmpegthumbnailer # Need For Video / Image Preview

    tokyonight-gtk-theme
    tela-icon-theme
    nwg-look

    nix-search-tv
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
