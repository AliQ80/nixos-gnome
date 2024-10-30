{ pkgs, ... }:

{
  home.packages = with pkgs; [
    libreoffice
  ];

  # services.emacs.enable = true;
}
