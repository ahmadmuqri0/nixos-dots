{ ... }:
{
  hardware.nvidia = {
    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
      # Make sure to use lspci | grep VGA to know the bus ID
      intelBusId = "PCI:0:2.0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };
}
