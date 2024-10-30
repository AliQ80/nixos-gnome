{ pkgs, ... }:

{
  home.packages = with pkgs; [
    localsend
    emacs29-pgtk
    jetbrains.pycharm-community
    python3
    obs-studio
    krita
    whatsapp-for-linux
  ];

  # services.emacs.enable = true;
}
