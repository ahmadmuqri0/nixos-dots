{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    zsh-fzf-tab
    eza
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    plugins = [
      {
        name = "fzf-tab";
        src = "${pkgs.zsh-fzf-tab}/share/fzf-tab";
      }
    ];

    shellAliases = {
      c = "clear";
      e = "exit";

      nrs = "sudo nixos-rebuild switch --flake $HOME/nixos-dots";
      nc = "$EDITOR $HOME/nixos-dots";

      fetch = "fastfetch --config examples/13";

      ls = "eza -l --icons --color=always --group-directories-first";
      ll = "eza -alF --icons --color=always --group-directories-first";
    };

    initContent = ''
      source ${pkgs.zsh-fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh
      bindkey -v
      bindkey "^p" history-search-backward
      bindkey "^n" history-search-forward
      bindkey "^f" forward-char
    '';
    envExtra = ''
      export EDITOR=nvim
    '';
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    options = [ "--cmd cd" ];
    enableZshIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}
