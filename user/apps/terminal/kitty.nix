{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    kitty
  ];
  programs.kitty = {
    enable = true;
    font = {
        name = "JetBrainsMono Nerd Font";
        size = 14;
      };
      shellIntegration.enableZshIntegration = true;
      themeFile = "Catppuccin-Frappe";
  };
}
