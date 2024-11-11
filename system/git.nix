{ pkgs, lib, ...}:

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
        gpg = {
        format = "ssh";
      };
      "gpg \"ssh\"" = {
        program = "${lib.getExe' pkgs._1password-gui "op-ssh-sign"}";
      };
      commit = {
        gpgsign = true;
      };

      user = {
        signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFixUHPs8Lc4aNRL0xYA+b5pjQQhE2tT5boCfY7i6xdl";
      };
      };
    };
  }
