#!/bin/bash

# setup 
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo add-apt-repository ppa:ondrej/apache2

# update OS
sh ../update/os.sh

# apache2
sudo apt-get install apache2
# sudo service apache2 status

# mariadb-server
sudo apt install mariadb-server
sudo mysql_secure_installation

# php7.4
sudo apt install php7.4

# install packages php packages
# sudo apt-get install zip php7.4-{bcmath,dom,curl,bz2,intl,gd,mbstring,mysql,zip}
