{ ... }:
{
  imports = [
    ./boot.nix
    ./ly.nix
    ./packages.nix
    ./audio.nix
    ./user.nix
    ./services.nix
    # ./file-manager.nix
  ];
}
