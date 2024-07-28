#!/bin/bash

# base setup
apt-get update;
apt-get -y upgrade;
apt-get -y autoremove;

apt-get install ubuntu-restricted-*;

# Programs

## Flathub Store
apt-get install -y flatpak;
apt-get install -y gnome-software-plugin-flatpak;
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo;

## Google Chrome
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb";
apt-get install -y ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb

## Vim
apt-get install -y vim

## Asus CTL

# zsh
## powerline fonts

## tlp
apt-get install -y tlp
service tlp start

# Applications
apt install -y dconf-editor

## Gradience 

# Programming

## VSCode
sudo apt-get install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get install -y code

## VSCode Extensions

## GOGH Colors
echo "10 11 12" `# insert colors here #` | bash -c  "$(wget -qO- https://git.io/vQgMr)" 

# install python and utilities
sudo apt-get install -y python3
sudo apt-get install -y pypy3
sudo apt-get install -y ipython3

# install Haskell
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
# install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs  | sh

