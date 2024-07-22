#!/bin/bash

# base setup
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y autoremove

sudo apt-get install ubuntu-restricted-*

# Programs
## Flathub Store
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo


# Asus CTL

# zsh
# powerline fonts


# tlp
sudo apt install tlp
sudo service tlp start

# Applications
sudo apt install dconf-editor

# Gradience 

# Programming

## VSCode
sudo apt-get install vscode

## VSCode Extensions

## GOGH Colors
echo "10 11 12" `# insert colors here #` | bash -c  "$(wget -qO- https://git.io/vQgMr)" 





# install python and utilities
sudo apt-get install python3
sudo apt-get install pypy3
sudo apt-get install ipython3

# install Haskell
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
# install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs  | sh

