{ pkgs, ... }:

{
  home.packages = with pkgs; [
    localsend
    emacs29-pgtk
  ];

  # services.emacs.enable = true;
}
