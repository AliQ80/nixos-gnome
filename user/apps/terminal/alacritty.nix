{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    alacritty
  ];
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = lib.mkForce 0.9;
      font = {
        normal = {
          family = "JetBrainsMono NF";
          style = "Regular";
        };
        bold = {
          family = "JetBrainsMono NF";
          style = "Bold";
        };
        italic = {
          family = "JetBrainsMono NF";
          style = "Italic";
        };
        bold_italic = {
          family = "JetBrainsMono NF";
          style = "Bold Italic";
        };
      size = 16;
      };
    };
#  programs.alacritty.enable = true;
#  programs.alacritty.settings = {
#    window.opacity = lib.mkForce 0.85;
  };
}
