{ pkgs, ... }:

  {
    home.packages = with pkgs; [
    
      # nerdfonts
      (nerdfonts.override { 
        fonts = [ 
          "JetBrainsMono" 
        ]; 
      })
      
      # google-fonts
      (google-fonts.override { 
        fonts = [
          "MonteCarlo"
          "Audiowide"
          "Nova Square"
          "Chathura"
        ]; 
      })
      
      # powerline
      
    ];
    
    fonts.fontconfig.enable = true;
  }
