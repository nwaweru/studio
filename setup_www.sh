#!/bin/bash

# Alert execution start
echo 'Setup initiated...'

# Add current user to the www-data group
sudo usermod -aG www-data $USER

# Set www-data to own /var/www folder
sudo chown www-data:www-data /var/www

# Allow users to completely own and manage their own projects
sudo chown -R $USER:$USER /var/www/*

# Set /var/www and subsequent folders to have 755 permission
sudo chmod -R 755 /var/www

# Start Laravel setup
sudo chown -R $USER:www-data /var/www/*/storage /var/www/*/bootstrap/cache
sudo chmod -R 775 /var/www/*/storage /var/www/*/bootstrap/cache
# End Laravel setup

# Ensure other users can only read .htaccess
sudo chmod 644 /var/www/*/public_html/.htaccess

# Confirm completion
echo $USER', your server is ready for awesomeness!'
