{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    foot
  ];
  programs.foot = {
    enable = true;
    server.enable = true;
    settings = {

      main = {
        font = "JetBrainsMono NF:size=14";
        dpi-aware = "yes";
      };

      mouse = {
        hide-when-typing = "no";
      };

      colors = {
        alpha = 0.9;
      };
    };
  };
}
