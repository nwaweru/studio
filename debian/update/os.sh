#!/bin/bash

# Cleanup before update
sudo apt autoremove && sudo apt autoclean

# Update
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade

if [ sudo dpkg -s youtube-dl 2>/dev/null >/dev/null ]; then
  sudo youtube-dl -U
fi
