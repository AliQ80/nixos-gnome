{ config, pkgs,... }:

{
  # programs.dconf.packages = true;

  dconf.settings = {
    "org/gnome/desktop/input-sources" = {
    sources = [
        "[('xkb', 'us')]"
        "[('xkb', 'ar')]"
      ];
    };
  };
}
