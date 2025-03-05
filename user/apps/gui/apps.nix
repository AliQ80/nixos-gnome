{ pkgs, ... }:

{
  home.packages = with pkgs; [
    localsend
    # emacs29-pgtk
    meld
    python3
    obs-studio
    krita
    scribus
    zed-editor
    
    # unfree
    jetbrains.pycharm-community
    whatsapp-for-linux
    obsidian
    vivaldi
    google-chrome
    discord
    zoom-us
  ];

  programs.vscode.enable = true;

  # services.flameshot.enable = true;
  # services.emacs.enable = true;
}
