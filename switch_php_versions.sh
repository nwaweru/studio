#!/bin/bash

if [ $1 -eq 5 ]
then
    # Disable apache module for PHP 7.2
    sudo a2dismod php7.2
    # Enable the apache module for PHP 5.6
    sudo a2enmod php5.6
    # Set PHP 5.6 as default for the CLI
    sudo update-alternatives --set php /usr/bin/php5.6
    # Restart apache
    sudo service apache2 restart 
elif [ $1 -eq 7 ]
then
    # Disable apache module for PHP 5.6
    sudo a2dismod php5.6
    # Enable the apache module for PHP 7.2
    sudo a2enmod php7.2
    # Set PHP 7.2 as default for the CLI
    sudo update-alternatives --set php /usr/bin/php7.2
    # Restart apache
    sudo service apache2 restart 
else
    echo "Why you testing me?"
fi