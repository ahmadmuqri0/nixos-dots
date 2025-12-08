{ config, pkgs, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-dots/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;

  configs = {
    kitty = "kitty";
    nvim = "nvim";
  };
in

{
  imports = [ ./modules/home ];

  home.username = "muqri";
  home.homeDirectory = "/home/muqri";
  home.stateVersion = "25.11";

  xdg.configFile = builtins.mapAttrs (name: subpath: {
    source = create_symlink "${dotfiles}/${subpath}";
    recursive = true;
  }) configs;

}
