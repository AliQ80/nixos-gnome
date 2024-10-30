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
        ]; 
      })
      
      # powerline
      
    ];
    
    fonts.fontconfig.enable = true;
  }
