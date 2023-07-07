#!/bin/bash

# https://phoenixnap.com/kb/fedora-nvidia-drivers

echo
echo "Installing Nvidia drivers"

sudo dnf -y update
sudo dnf -y upgrade

sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda
