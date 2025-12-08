{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    nautilus
    waybar
    kitty
    lazygit
    fastfetch
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

}
