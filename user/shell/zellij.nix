{ pkgs, ... }:

{
  # prompt styling
  home.packages = with pkgs; [
    zellij
  ];

  programs.zellij = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      theme = "catppuccin-frappe";
    };
  };
}
