#!/bin/bash

# Cleanup before update
sudo apt autoremove && sudo apt autoclean

# Update
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade

# Update snaps
# sudo snap refresh

# Update youtube-dl | Remove this if you do not use youtube-dl
sudo youtube-dl -U
