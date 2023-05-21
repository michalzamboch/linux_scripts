#!/bin/bash

# Install Fedora ARM image 

sudo dnf -y install arm-image-installer
sudo arm-image-installer --image=$1 --target=rpi4 --media=/dev/sdc
