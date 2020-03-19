#!/bin/bash

# needs to be run as ROOT

# pass the username for the user
echo "$1 ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$1