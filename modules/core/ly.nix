{ ... }:
{
  # Enable ly with the Matrix animation
  # Animations: "doom", "colormix", "matrix"
  services.displayManager.ly = {
    enable = true;
    settings = {
      animation = "matrix";
      save_file = "/etc/ly/save";
      # hide_borders = true;
      min_refresh_delta = 5;
    };
  };

}

