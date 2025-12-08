{ ... }:
{
  imports = [
    ./boot.nix
    ./xserver.nix
    ./nvidia.nix
    ./desktop.nix
    ./packages.nix
    ./audio.nix
    ./user.nix
    ./services.nix
    ./programs.nix
  ];
}
