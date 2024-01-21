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




## VSCode
sudo apt-get install vscode







# install python and utilities
sudo apt-get install python3
sudo apt-get install pypy3
sudo apt-get install ipython3


# install Haskell
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
# install Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh