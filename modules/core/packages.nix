{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    nautilus
    waybar
    kitty
    lazygit
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

}
