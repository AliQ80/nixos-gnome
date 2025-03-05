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
        font = "JetBrainsMono NF:size=8";
        dpi-aware = "yes";
        initial-window-mode = "maximized";
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
