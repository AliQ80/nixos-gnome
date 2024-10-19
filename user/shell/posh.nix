{ pkgs, ... }:

{
  # prompt styling
  home.packages = with pkgs; [
    oh-my-posh
  ];

  programs.oh-my-posh = {
    enable = true;
  };
}
