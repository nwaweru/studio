#!/bin/bash

# https://nordvpn.com/tutorials/linux/openvpn/

sudo apt-get install -y openvpn ca-certificates unzip

cd /etc/openvpn
sudo wget https://downloads.nordcdn.com/configs/archives/servers/ovpn.zip
sudo unzip ovpn.zip
sudo rm ovpn.zip

# tcp
cd /etc/openvpn/ovpn_tcp/
ls -al

# server
sudo openvpn us842.nordvpn.com.udp.ovpn
sudo openvpn /etc/openvpn/ovpn_udp/us842.nordvpn.com.udp.ovpn

