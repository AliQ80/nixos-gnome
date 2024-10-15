{ pkgs, ... }:
let

  # My shell aliases
  myAliases = {
    ls = "eza --icons -l -T -L=1";
#    cat = "bat";
#    htop = "btm";
#    fd = "fd -Lu";
#    w3m = "w3m -no-cookie -v";
#    neofetch = "disfetch";
#    fetch = "disfetch";
#    gitfetch = "onefetch";
#    "," = "comma";
  };
in
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    shellAliases = myAliases;
  };

#  programs.bash = {
#    enable = true;
#    enableCompletion = true;
#    shellAliases = myAliases;
#  };

  home.packages = with pkgs; [
  oh-my-posh
  zellij
#    direnv
#    nix-direnv
  ];

  programs.oh-my-posh = {
    enable = true;
  };

  programs.zellij = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      theme = "catppuccin-frappe";
    };
  };

#  programs.direnv.enable = true;
#  programs.direnv.enableZshIntegration = true;
#  programs.direnv.nix-direnv.enable = true;
}
