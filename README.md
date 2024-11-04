# My NixOS configs

## Get the files
- clone the repo into .dotfiles

## build the system
```bash
sudo nixos-rebuild switch --flake ~/.dotfiles
```

## build home configuration
```bash
home-manager switch --flake ~/.dotfiles
```
