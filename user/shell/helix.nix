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
      keys.normal = {
        A-g = [":new" ":insert-output lazygit" ":buffer-close!" ":redraw"];
      };
    };

      languages = {
        language-server.nixd = {
          command = "nixd";
        };

        language = [{
          name = "nix";
          language-servers = [ "nixd" ];
          # auto-format = false;
        }];
      };
      
    themes = {
      catppuccin-frappe-glass = {
        inherits = "catppuccin_frappe";
        "ui.background" = "";
      };
    };
  };
}
