#!/bin/bash

# install gitlab
sudo apt update
sudo apt install ca-certificates curl openssh-server postfix
cd /tmp
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
sudo bash /tmp/script.deb.sh
sudo apt install gitlab-ce

# adjust firewall
sudo ufw status
sudo ufw allow "WWW Full"
sudo ufw allow OpenSSH
sudo ufw status verbose
