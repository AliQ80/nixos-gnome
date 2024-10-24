{ pkgs, ... }:

{
  home.packages = with pkgs; [
    localsend
    emacs29-pgtk
    jetbrains.pycharm-community
  ];

  # services.emacs.enable = true;
}
