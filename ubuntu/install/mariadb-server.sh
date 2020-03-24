#!/bin/bash

sudo apt update

sudo apt install mariadb-server
sudo mysql_secure_installation
