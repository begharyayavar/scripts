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

## Warp Terminal
sudo apt-get install wget gpg
wget -qO- https://releases.warp.dev/linux/keys/warp.asc | gpg --dearmor > warpdotdev.gpg
sudo install -D -o root -g root -m 644 warpdotdev.gpg /etc/apt/keyrings/warpdotdev.gpg
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/warpdotdev.gpg] https://releases.warp.dev/linux/deb stable main" > /etc/apt/sources.list.d/warpdotdev.list'
rm warpdotdev.gpg
sudo apt update && sudo apt install warp-terminal

## nerd fonts

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
chmod +x install.sh
./install.sh
cd ../
rm -rf nerd-fonts

## Starship

curl -sS https://starship.rs/install.sh | sh

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

### Git
code --install-extension eamodio.gitlens;

### Python
code --install-extension ms-python.python;
code --install-extension kevinrose.vsc-python-indent; # For correct python indentation. I'm very pedantic.
code --install-extension donjayamanne.python-environment-manager; # For managing virtual environments... this is such a pain normally.
code --install-extension njpwerner.autodocstring; # For boilerplate docstrings. as i'm getting older i'm becoming more stubborn about documentation.
code --install-extension oderwat.indent-rainbow; # Because nested loops in python is still a thing
code --install-extension formulahendry.auto-complete-tag; # More quality of life improvements.
code --install-extension kaih2o.python-resource-monitor; # Optimisation is a sport

### Jupyter
code --install-extension ms-toolsai.jupyter;
code --install-extension ms-toolsai.vscode-jupyter-cell-tags;
### Rust

### HTML and CSS
code --install-extension formulahendry.auto-rename-tag; # Small quality of life improvements. modern IDE's are magic.
code --install-extension pranaygp.vscode-css-peek; # You dont know how useful it is until you're 10345 lines deep in a mess barely qualifies as text, let alone code.
code --install-extension kamikillerto.vscode-colorize; # You dont really wanna google everytime, do you.

### Javascript
code --install-extension dbaeumer.vscode-eslint;

### GO
code --install-extension golang.Go;

### Markdown

### CLI

### Themes 
code --install-extension GitHub.github-vscode-theme;
code --install-extension jdinhlife.gruvbox; # I need to checkout more gruvbox themes
code --install-extension dracula-theme.theme-dracula;
code --install-extension akamud.vscode-theme-onedark;
code --install-extension zhuangtongfa.Material-theme;

### Miscellaneous
code --install-extension aaron-bond.better-comments; # For writings TODO's i'll never read.
code --install-extension mechatroner.rainbow-csv; # Because looking a page of commas is boring. Also, colors!
code --install-extension esbenp.prettier-vscode; # I like shiny things! Sue me.
code --install-extension ibm.output-colorizer; # Whatever makes reading log files less of a drab.
code --install-extension vscode-icons-team.vscode-icons; # More pretty things! Also maybe i want shinier icons...
code --install-extension file-icons.file-icons; # More icons!
code --install-extension mutantdino.resourcemonitor;
code --install-extension redhat.vscode-yaml;
code --install-extension tamasfe.even-better-toml
code --install-extension vscodevim.vim;

code --install-extension bierner.github-markdown-preview; # Maybe not, let's use it first
code --install-extension shd101wyy.markdown-preview-enhanced;
code --install-extension yzhang.markdown-all-in-one;
code --install-extension koehlma.markdown-math;
code --install-extension jonathan-yeung.mark-sharp; # Looks cool, yet to try.
code --install-extension DavidAnson.vscode-markdownlint;

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
