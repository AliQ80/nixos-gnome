{ pkgs, ... }:

{
  # prompt styling
  home.packages = with pkgs; [
    oh-my-posh
  ];

  programs.oh-my-posh = {
    enable = true;
    # settings = builtins.fromJSON (builtins.unsafeDiscardStringContext (builtins.readFile "${HOME}/.dotfiles/user/configs/posh/jandedobbeleer.omp.json"));
  };
}
