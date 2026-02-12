#!/usr/bin/bash

sudo add-apt-repository ppa:longsleep/golang-backports
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install git make unzip gcc fonts-noto-color-emoji ripgrep

sudo apt install software-properties-common

curl https://sh.rustup.rs -sSf | sh

curl -Ss https://astral.sh | bash
uv tool install --upgrade pynvim

sudo apt install golang-go
sudo apt install python3-neovim
sudo apt install python-dev python-pip
sudo apt install nodejs
sudo apt install npm

wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip \
&& cd ~/.local/share/fonts \
&& unzip Meslo.zip \
&& rm Meslo.zip \
&& fc-cache -fv
cd ~

sudo apt install neovim