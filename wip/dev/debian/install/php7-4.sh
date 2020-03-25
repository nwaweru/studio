#!/bin/sh

# setup
sudo apt -y install lsb-release apt-transport-https ca-certificates 
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list

# quick fix: updates existing php
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade

# installation
# sudo apt -y install php7.4

# additional packages
# sudo apt-get install zip php7.4-{bcmath,dom,curl,bz2,intl,gd,mbstring,mysql,zip}

# quick fix: auto-remove updated packages
sudo apt autoremove && sudo apt autoclean
