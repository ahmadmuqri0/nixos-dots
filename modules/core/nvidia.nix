{ config, ... }:
{
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    open = false;

    # Modesetting is required for Wayland
    modesetting.enable = true;

    # Try enabling power management
    powerManagement.enable = true;
    powerManagement.finegrained = false;

    # Enable Nvidia settings menu
    nvidiaSettings = true;

    # Use stable driver instead of latest (more reliable)
    package = config.boot.kernelPackages.nvidiaPackages.stable;

    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      # Get the correct bus IDs:
      # Run: lspci | grep -E "VGA|3D"
      intelBusId = "PCI:0:2:0"; # Usually Intel GPU
      nvidiaBusId = "PCI:1:0:0"; # Usually NVIDIA GPU
    };
  };
}
