{ pkgs, ... }:
{
  # Collection of useful CLI apps
  home.packages = with pkgs; [
    # Command Line
    fastfetch
    onefetch
    btop
    yazi
    lolcat
    cowsay
    bat
    eza
    fd
    ripgrep
    coreutils
    clang
    tldr
    vim
    wget
    neovim
    lazygit
    pciutils
    usbutils
  ];

  programs.gh = {
    enable = true;
  };
  
  programs.fzf = {
    enable = true;
  };
}
