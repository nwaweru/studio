#!/bin/bash

###################################
# Script for installing sublime 3
# Documentation from https://www.sublimetext.com/docs/3/linux_repositories.html#apt
###################################
#
# pass a param of stable/dev to this script
# e.g. sh ~/bash/dev/install.sublime3.sh stable
#

# setup
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/$1/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update

# install
sudo apt-get install sublime-text