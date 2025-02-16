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
    scribus
    whatsapp-for-linux
  ];

  programs.vscode.enable = true;

  # services.flameshot.enable = true;
  # services.emacs.enable = true;
}
