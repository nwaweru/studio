#!/bin/bash

# rsa
ssh-keygen -t rsa -b 4096 -C "ndiranguwaweru@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

# ed25519
ssh-keygen -t ed25519 -C "ndiranguwaweru@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
