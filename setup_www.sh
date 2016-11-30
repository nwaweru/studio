#!/bin/bash

# Alert execution start
echo 'Setup initiated...'

# Set root to own /var/www folder
sudo chown root:root /var/www
# Add current user to www-data group
sudo usermod -a -G www-data $USER
# Set web server as owner of all folders within /var/www
sudo chown -R www-data:www-data /var/www/*
# Set current user as owner of all public_html folders
sudo chown -R $USER:$USER /var/www/*/public_html
# Set permissions for files in /var/www
sudo find /var/www/* -type f -exec chmod 664 {} \;
# Set permissions for folders in /var/www
sudo find /var/www/* -type d -exec chmod 775 {} \;

# Start Laravel setup
sudo chmod -R ug+rwx /var/www/*/storage /var/www/*/bootstrap/cache
# End Laravel setup

# Confirm completion
echo $USER', your server is ready for awesomeness!'
