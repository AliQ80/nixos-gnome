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
    initExtra = ''
      function yz() {
      	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
      	yazi "$@" --cwd-file="$tmp"
	      if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		      builtin cd -- "$cwd"
	      fi
	      rm -f -- "$tmp"
      }
    '';
  };

#  programs.bash = {
#    enable = true;
#    enableCompletion = true;
#    shellAliases = myAliases;
#  };

#   home.packages = with pkgs; [
# #    direnv
# #    nix-direnv
#   ];

#  programs.direnv.enable = true;
#  programs.direnv.enableZshIntegration = true;
#  programs.direnv.nix-direnv.enable = true;
}
