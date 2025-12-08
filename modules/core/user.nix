{ pkgs, ... }:
{
  users.users.muqri = {
    isNormalUser = true;
    description = "Ahmad Muqri";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      tree
    ];
  };
}
