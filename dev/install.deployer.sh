#!/bin/bash

###################################
# Script for installing deployer
###################################

cd ~
curl -LO https://deployer.org/deployer.phar
sudo mv deployer.phar /usr/local/bin/dep
sudo chmod +x /usr/local/bin/dep
