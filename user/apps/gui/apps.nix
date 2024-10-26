{ pkgs, ... }:

{
  home.packages = with pkgs; [
    localsend
    emacs29-pgtk
    jetbrains.pycharm-community
    python3
  ];

  # services.emacs.enable = true;
}
