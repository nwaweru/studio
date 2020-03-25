#!/bin/bash

# install xclip
sudo apt install xclip

# ed25519
ssh-keygen -t ed25519 -C "nwaweru@drash.co.ke"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

xclip -sel clip < ~/.ssh/id_ed25519.pub
cat ~/.ssh/id_ed25519.pub
