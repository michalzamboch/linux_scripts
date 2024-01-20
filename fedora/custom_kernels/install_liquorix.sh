#!/bin/bash

# Install Liquorix Kernel on Fedora
# https://www.linuxcapable.com/install-liquorix-kernel-on-fedora-linux/
# 
# Disclamer!
# Install on your own risk. Always backup your system before install.

sudo dnf -y update

sudo dnf upgrade --refresh
sudo dnf copr enable rmnscnce/kernel-lqx -y
sudo dnf install kernel-lqx

echo 
echo "Finished. Please, reboot your pc."
