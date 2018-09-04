#!/bin/bash

# Cleanup before update
sudo apt-get autoremove && sudo apt-get autoclean

# Update
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

# Update youtube-dl | Remove this if you do not use youtube-dl
sudo youtube-dl -U
