# My NixOS configs

## start a nix shell with git
```
nix-shell -p git helix
```

## Get the files
- clone the repo into .dotfiles
```
git clone git@github.com:AliQ80/nixos-gnome.git .dotfiles
```

## copy hardware config to .dotfiles
```
cp /etc/nixos/hardware-configuration.nix ~/.dotfiles/hardware.nix
```

## build the system
```bash
sudo nixos-rebuild switch --flake ~/.dotfiles
```

## build home configuration
```bash
home-manager switch --flake ~/.dotfiles
```
