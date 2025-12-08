{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    waybar
    kitty
    lazygit
    fastfetch

    ffmpegthumbnailer # Need For Video / Image Preview
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
