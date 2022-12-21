#!/bin/bash

clear

echo "Update script start..."
sudo apt-get update
echo ""

sudo apt-get -y upgrade
echo ""

echo "Package manager clean up..."

sudo apt -y autoremove
echo ""

sudo apt -y clean
echo ""

sudo apt -y autoclean
echo ""

echo "Update script end..."
sleep 2

