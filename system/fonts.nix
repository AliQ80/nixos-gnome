{ pkgs, ... }:

  {
    home.packages = with pkgs; [
    
      # nerdfonts
      nerd-fonts.jetbrains-mono
      
      # google-fonts
      (google-fonts.override { 
        fonts = [
          "MonteCarlo"
          "Audiowide"
          "Nova Square"
          "Chathura"
          "Inter"
          "IBM Plex Serif"
          "Merriweather"
          "Libre Baskerville"
        ]; 
      })
      
      # powerline
      
    ];
    
    fonts.fontconfig.enable = true;
  }
