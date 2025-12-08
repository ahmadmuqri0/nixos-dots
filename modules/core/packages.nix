{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    nautilus
    waybar
    kitty 
    lazygit
  ];
}
