#!/bin/bash

# install ufw firewall and enable ssh
apt install ufw
ufw allow OpenSSH
ufw enable
ufw status
