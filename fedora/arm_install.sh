#!/bin/bash

pushd .
cd ~/Downloads/

sudo dnf -y install arm-image-installer
sudo arm-image-installer --image=$1 --target=rpi4 --media=/dev/sdc

popd
