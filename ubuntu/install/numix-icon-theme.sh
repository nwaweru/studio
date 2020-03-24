#!/bin/sh

ppa="numix/ppa" # ondrej/php PPA

if ! grep -q "^deb .*$ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo add-apt-repository ppa:$ppa
fi

sudo apt-get update

sudo apt-get install -y gnome-tweak-tool numix-gtk-theme numix-icon-theme-circle numix-icon-theme-square
