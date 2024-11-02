{ pkgs, ... }:

{
  home.packages = with pkgs; [
    libreoffice
    onlyoffice-bin
  ];

}
