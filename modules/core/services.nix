{ ... }: {
  # Services to start
  services = {
    openssh.enable = true; # SSH
    printing.enable = true; # Cups
    flatpak.enable = true; # Flatpak
  };
}
