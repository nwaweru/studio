#!/bin/bash

# Alert execution start
echo 'Setup initiated...'

# Set www-data to own /var/www folder
sudo chown -R www-data:www-data /var/www
# Add current user to the www-data group
sudo usermod -aG www-data $USER
# Set permissions for files in /var/www
sudo find /var/www/* -type f -exec chmod 664 {} \;
# Set permissions for folders in /var/www
sudo find /var/www/* -type d -exec chmod 775 {} \;

# Start virtual hosts & my laravel setup
sudo chown -R $USER:$USER /var/www/*/public_html
sudo chmod -R 770 /var/www/*/storage /var/www/*/bootstrap/cache
# End virtual hosts & my laravel setup

# Confirm completion
echo $USER', your server is ready for awesomeness!'
