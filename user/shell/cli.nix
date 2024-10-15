{ pkgs, ... }:
{
  # Collection of useful CLI apps
  home.packages = with pkgs; [
    # Command Line
    fastfetch
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
    neovim
    lazygit
  ];
}
