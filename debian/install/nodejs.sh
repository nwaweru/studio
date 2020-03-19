#!/bin/bash

sudo apt install -y curl

# Pass the version as a parameter 
curl -sL https://deb.nodesource.com/setup_$1.x -o nodesource_setup.sh

sudo bash nodesource_setup.sh

sudo apt install -y nodejs
rm nodesource_setup.sh
