{ ... }:
{
  imports = [
    ./boot.nix
    ./xserver.nix
    ./desktop.nix
    ./packages.nix
    ./audio.nix
    ./user.nix
    ./services.nix
    ./programs.nix
  ];
}
