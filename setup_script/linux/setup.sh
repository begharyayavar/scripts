#!/bin/bash

# base setup
apt update;
apt -y upgrade;
apt -y autoremove;

# Utilities

apt install -y curl;

apt install -y git;

apt install -y vim;

apt install -y dconf-editor;
# Programs


## Flathub Store
apt install -y flatpak;
apt install -y gnome-software-plugin-flatpak;
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo;
apt install -y plasma-discover*;

## Google Chrome
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb";
apt install -y ./google-chrome-stable_current_amd64.deb;
rm ./google-chrome-stable_current_amd64.deb;

## Asus CTL

# zsh
apt install -y zsh;

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
## powerline fonts

## tlp
apt install -y tlp;
service tlp start;

# Applications


## Gradience

# Programming

## VSCode
sudo apt install software-properties-common apt-transport-https wget -y;
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -;
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main";
sudo apt install -y code;

## VSCode Extensions

code --install-extension eamodio.gitlens;
code --install-extension aaron-bond.better-comments;
code --install-extension mechatroner.rainbow-csv;
code --install-extension esbenp.prettier-vscode;
code --install-extension formulahendry.auto-rename-tag;
code --install-extension pranaygp.vscode-css-peek;
code --install-extension ext install kamikillerto.vscode-colorize;
code --install-extension vscode-icons-team.vscode-icons;
code --install-extension ms-python.python;
code --install-extension ms-toolsai.jupyter;
code --install-extension ms-toolsai.vscode-jupyter-cell-tags;
code --install-extension dbaeumer.vscode-eslint;
code --install-extension formulahendry.auto-complete-tag;
code --install-extension bierner.github-markdown-preview;
code --install-extension shd101wyy.markdown-preview-enhanced;
code --install-extension yzhang.markdown-all-in-one;
code --install-extension koehlma.markdown-math;
code --install-extension jonathan-yeung.mark-sharp;
code --install-extension golang.Go;
code --install-extension DavidAnson.vscode-markdownlint;
code --install-extension redhat.vscode-yaml;
code --install-extension GitHub.github-vscode-theme;
code --install-extension zhuangtongfa.Material-theme;
code --install-extension akamud.vscode-theme-onedark;
code --install-extension file-icons.file-icons;
code --install-extension jdinhlife.gruvbox;
code --install-extension dracula-theme.theme-dracula;
code --install-extension kaih2o.python-resource-monitor;
code --install-extension vscodevim.vim

## GOGH Colors
echo "10 11 12" `# insert colors here #` | bash -c  "$(wget -qO- https://git.io/vQgMr)";

# install python and utilities
sudo apt install -y python3;
sudo apt install -y pypy3;
sudo apt install -y ipython3;

# install python libraries and packages

# install Haskell
curl --proto '=https' --tlsv1.2 -sSf https:/-ghcup.haskell.org | sh;
# install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs  | sh;

## REQUIRE USER INPUT


apt install ubuntu-restricted-*;

### Git config

## Fun Things
flathub install -y blanket;

flatpak install -y resources;

# Configuration
## USE kwriteconfig5 and kreadconfig5
## Update Automatically
## Offline Update
## Keybindings
## Krunner
