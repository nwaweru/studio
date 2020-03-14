#!/bin/bash

# create a new sudo user
adduser $1
usermod -aG sudo $1

# copy .ssh directory to allow access using current setup.
# TODO: optional to enable creation of OTHER users.
rm -rf /home/$1/.ssh
cp -r /root/.ssh /home/$1
chown -R $1:$1 /home/$1/.ssh
