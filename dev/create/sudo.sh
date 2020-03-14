#!/bin/bash

# create a new sudo user
echo 'Creating user $1...'
adduser $1
echo 'Adding $1 to the sudoers group...'
usermod -aG sudo $1

# copy .ssh directory to allow access using current setup.
# TODO: optional to enable creation of OTHER users.
echo 'Enabling ssh for $1...'
rm -rf /home/$1/.ssh
cp -r /root/.ssh /home/$1
chown -R $1:$1 /home/$1/.ssh
echo '$1 created successfully.'
