#!/usr/bin/zsh

sudo apt update
sudo apt install git make unzip gcc fonts-noto-color-emoji ripgrep

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository ppa:longsleep/golang-backports
curl https://sh.rustup.rs -sSf | sh

sudo apt update
sudo apt install golang-go
sudo apt install neovim
sudo apt install nodejs
sudo apt install npm

wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip \
&& cd ~/.local/share/fonts \
&& unzip Meslo.zip \
&& rm Meslo.zip \
&& fc-cache -fv
cd ~
