{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/core/default.nix
  ];

  networking.hostName = "artemis";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Kuala_Lumpur";

  services.displayManager.ly.enable = true;
  services.libinput.enable = true;

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  programs.zsh.enable = true;

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  system.stateVersion = "25.05";
}
