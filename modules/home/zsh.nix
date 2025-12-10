{ pkgs, ... }:
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
      gc = "sudo nix-collect-garbage -d";
      ns = "nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history";
      lsg = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations";

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
