#!/bin/bash

# Cleanup before update
sudo apt-get autoremove && sudo apt-get autoclean

# Update
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

# Check if youtube-dl is installed and update it
if dpkg-query -l youtube-dl; then
	sudo youtube-dl -U
fi
