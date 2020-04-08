#!/bin/sh

sudo apt install software-properties-common php libapache2-mod-php
sudo systemctl restart apache2

php7="ondrej/php" # ondrej/php PPA

if ! grep -q "^deb .*$php7" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo add-apt-repository ppa:$php7
fi

apache2="ondrej/apache2" # ondrej/apache2 PPA

if ! grep -q "^deb .*$apache2" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo add-apt-repository ppa:$apache2
fi

sudo apt update && sudo apt upgrade
sudo apt autoremove && sudo apt autoclean

sudo apt install zip php7.4 php7.4-mysql php7.4-gd php7.4-bcmath php7.4-zip php7.4-dom php7.4-mbstring
# curl,bz2,intl,gd,zip}
