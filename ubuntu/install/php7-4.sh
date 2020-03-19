#!/bin/sh

sudo apt install php libapache2-mod-php
sudo systemctl restart apache2

sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo add-apt-repository ppa:ondrej/apache2

sudo apt update && sudo apt upgrade
sudo apt autoremove && sudo apt autoclean

sudo apt-get install php7.4

sudo apt-get install zip php7.4-{bcmath,dom,curl,bz2,intl,gd,mbstring,mysql,zip}
