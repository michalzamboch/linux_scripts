#!/bin/bash

# Install Liquorix Kernel on Fedora

sudo dnf upgrade --refresh
sudo dnf copr enable rmnscnce/kernel-lqx -y
sudo dnf install kernel-lqx

echo 
echo "Finished. Please, reboot your pc."
