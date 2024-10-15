{ pkgs, ...}:

  {
    home.packages = with pkgs; [
      git
    ];
    programs.git = {
      enable = true;
      userName = "Ali Karam";
      userEmail = "ak@alikaram.com";
      extraConfig = {
        init.defaultBranch = "master";
      };
    };
  }
