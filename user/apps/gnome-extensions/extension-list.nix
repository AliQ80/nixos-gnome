{ pkgs, ... }:

{
  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;

    # `gnome-extensions list` for a list
      enabled-extensions = [
#        "user-theme@gnome-shell-extensions.gcampax.github.com"
#        "trayIconsReloaded@selfmade.pl"
#        "dash-to-panel@jderose9.github.com"
#        "sound-output-device-chooser@kgshank.net"
#	       "undecorate@tabdeveloper.com"
#	       "pano@elhan.io"
        "Vitals@CoreCoding.com"
        "space-bar@luchrioh"
      	"caffeine@patapon.info"
      	"tactile@lundal.io"
      	"AlphabeticalAppGrid@stuarthayhurst"
      	"blur-my-shell@aunetx"
      	"just-perfection-desktop@just-perfection"
        "search-light@iceman.github.com"
      ];
    };
  };

  home.packages = with pkgs.gnomeExtensions; [
    # ...
#    user-themes
#    tray-icons-reloaded
#    dash-to-panel
#    sound-output-device-chooser
#    undecorate-window-for-wayland
#    pano
    vitals
    space-bar
    caffeine
    tactile
    alphabetical-app-grid
    blur-my-shell
    just-perfection
    search-light
  ];
}

