{ ... }:
{
  imports = [
    ./boot.nix
    ./packages.nix
    ./openssh.nix
    ./audio.nix
    ./user.nix
  ];
}
