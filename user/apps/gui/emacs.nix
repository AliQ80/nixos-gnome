{ config, pkgs, lib, ... }:

let
  emacs = pkgs.emacs30-pgtk;  # Use Emacs 30 with PGTK
in
{
  programs.emacs = {
    enable = true;
    package = emacs;
  };

  home.packages = with pkgs; [
    git
    ripgrep
    fd
    gnutls
    fzf
  ];

  systemd.user.services.emacs = {
    Unit = {
      Description = "Doom Emacs daemon";
      After = [ "network.target" ];
    };
    Service = {
      ExecStart = "${pkgs.zsh}/bin/zsh -c '${config.home.homeDirectory}/.emacs.d/bin/doom run --fg-daemon'";
      Restart = "always";
      Environment = "SHELL=${pkgs.zsh}/bin/zsh";
    };
    Install = {
      WantedBy = [ "default.target" ];
    };
  };

  home.sessionVariables = {
    EMACS_SERVER_FILE = "${config.home.homeDirectory}/.emacs.d/server/server";
  };

  home.activation = {
    ensureEmacsDir = lib.hm.dag.entryAfter ["writeBoundary"] ''
      mkdir -p ${config.home.homeDirectory}/.emacs.d/server
      chmod 700 ${config.home.homeDirectory}/.emacs.d/server
    '';
  };
}
