#!/bin/bash

# Setting up ufw Firewall

if ! command -v ufw &> /dev/null
then
    echo "ufw could not be found"
    exit
fi

sudo ufw limit 22/tcp  
sudo ufw allow 80/tcp  
sudo ufw allow 443/tcp  
sudo ufw enable
