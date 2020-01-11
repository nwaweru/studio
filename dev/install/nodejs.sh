#!/bin/bash

###################################
# Script for installing nodejs
#
# Pass the version as a parameter 
# e.g. sh ~/bash/dev/install/nodejs.sh 10
###################################

cd ~

sudo apt install -y curl
curl -sL https://deb.nodesource.com/setup_$1.x -o nodesource_setup.sh

sudo bash nodesource_setup.sh
sudo apt install -y nodejs
rm nodesource_setup.sh
