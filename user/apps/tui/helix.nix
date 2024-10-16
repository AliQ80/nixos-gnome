{ pkgs, ... }:

{
  home.packages = with pkgs; [
    helix
  ];

  programs.helix = {
    enable = true;

    settings = {
      theme = "catppuccin-frappe-glass";
    };

    themes = {
      catppuccin-frappe-glass = {
        inherits = "catppuccin_frappe";
        "ui.background" = "";
      };
    };
  };
}
