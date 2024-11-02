{ pkgs, ... }:

{
  home.packages = with pkgs; [
    localsend
    emacs29-pgtk
    jetbrains.pycharm-community
    meld
    python3
    obs-studio
    krita
    whatsapp-for-linux
  ];

  # services.emacs.enable = true;
}
