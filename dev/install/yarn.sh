#!/bin/bash

###################################
# Script for installing Yarn package manager
# Documentation from https://yarnpkg.com/lang/en/docs/install/#debian-stable
###################################
#
# e.g. sh ~/bash/dev/install/yarn.sh
#

# setup
sudo apt install curl
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# install
sudo apt update && sudo apt install yarn
