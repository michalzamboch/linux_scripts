#!/bin/bash

# https://phoenixnap.com/kb/fedora-nvidia-drivers
# Installing nvidia drivers
echo

if command -v lspci &> /dev/null; then
    if lspci | grep -i -q "NVIDIA"; then
        echo "Installing Nvidia drivers"

        sudo dnf -y update
        sudo dnf -y upgrade
        sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda
    else
        echo "No Nvidia graphics card found."
    fi
else
    echo "lspci command not found. Please install it."
fi

