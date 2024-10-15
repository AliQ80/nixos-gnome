{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gnome-extension-manager
    gnomeExtensions.caffeine
  ];
}
