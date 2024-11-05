# My NixOS configs

## start a nix shell with git
```
nix-shell git
```

## Get the files
- clone the repo into .dotfiles
```
git clone https://github.com/AliQ80/nixos-gnome.git .dotfiles
```

## build the system
```bash
sudo nixos-rebuild switch --flake ~/.dotfiles
```

## build home configuration
```bash
home-manager switch --flake ~/.dotfiles
```
