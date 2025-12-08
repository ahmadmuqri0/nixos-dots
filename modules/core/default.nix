{ ... }:
{
  imports = [
    ./boot.nix
    ./xserver.nix
    ./packages.nix
    ./audio.nix
    ./user.nix
    ./services.nix
  ];
}
