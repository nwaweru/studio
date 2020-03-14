#!/bin/bash

# create a new sudo user
adduser $1 && usermod -aG sudo $1
