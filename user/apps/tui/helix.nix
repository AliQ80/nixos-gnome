{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    helix
  ];
  programs.helix = {
    enable = true;
  };
}
