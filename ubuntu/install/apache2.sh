#!/bin/bash

sudo apt update

sudo apt install apache2
sudo ufw app list
sudo ufw allow in "Apache Full"
