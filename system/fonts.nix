{ pkgs, ... }:

  {
    home.packages = with pkgs; [
      # nerdfonts
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
      # powerline
    ];
    fonts.fontconfig.enable = true;
  }
