{ pkgs, ... }:

{
  home.packages = with pkgs; [
    helix
  ];

  programs.helix = {
    enable = true;

    settings = {
      theme = "catppuccin-frappe-glass";
      editor = {
        color-modes = true;
        line-number = "relative";

        cursor-shape = {
          insert = "bar";
          select = "underline";
        };
        
        statusline = {
          separator = "|";
          mode.normal = "NORMAL";
          mode.insert = "INSERT";
          mode.select = "SELECT";
        };
      };
    };

    themes = {
      catppuccin-frappe-glass = {
        inherits = "catppuccin_frappe";
        "ui.background" = "";
      };
    };
  };
}
