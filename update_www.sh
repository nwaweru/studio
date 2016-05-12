#!/bin/bash

# Add the current user to the www-data group if not there
if groups "$USER" | grep -q -E ' www-data(\s|$)'; then
    echo $USER ' is in www-data...moving on'
else
	sudo adduser $USER www-data
	    echo 'Added ' $USER ' to www-data...'
fi

# Current user to own /var/www
sudo chown $USER:www-data -R /var/www
	echo $USER ' now owns /var/www...'

# Change permission of /var/www to 755
sudo chmod u=rwX,g=srX,o=rX -R /var/www
	echo '...and permissions of /var/www changed to 755'

# Confirmation
	echo 'Script successful. Code awesomeness!'