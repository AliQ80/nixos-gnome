{ config, pkgs, system, inputs, ... }:

{
  imports = [
  # Shell Apps
    # ./user/shell/posh.nix
    # ./user/shell/starship.nix
    ./user/shell/starship_cool.nix
    ./user/shell/zellij.nix

  # Terimenal Apps
    ./user/shell/cli.nix
    ./user/shell/helix.nix
    ./user/shell/lsp.nix
    ./user/shell/nh.nix

  # Terminal Emulators
    ./user/apps/terminal/alacritty.nix
    ./user/apps/terminal/kitty.nix
    ./user/apps/terminal/foot.nix
    
  # GUI Apps
    ./user/apps/gnome-extensions/extension-list.nix
    ./user/apps/gui/apps.nix
    # ./user/apps/gui/emacs.nix
    ./user/apps/gui/office.nix
    # ./user/apps/gui/zen.nix
    
  # System Apps
    ./system/zsh.nix
    ./system/dconf.nix
    ./system/fonts.nix
    ./system/git.nix
    ./system/ssh-config.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ali";
  home.homeDirectory = "/home/ali";

  # allow unfree apps
  nixpkgs.config.allowUnfree = true;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
    # inputs.zen-browser.packages."${system}".specific

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/ali/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
    # EDITOR = "nvim";
    EDITOR = "hx";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
