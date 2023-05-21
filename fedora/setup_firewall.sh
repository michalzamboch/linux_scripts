#!/bin/bash

sudo dnf -y update  
sudo dnf -y install ufw  
sudo ufw limit 22/tcp  
sudo ufw allow 80/tcp  
sudo ufw allow 443/tcp  
sudo ufw enable
