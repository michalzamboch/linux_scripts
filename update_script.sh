#!/bin/bash

clear

echo "Start update skriptu..."
sudo apt-get update
echo ""

sudo apt-get -y upgrade
echo ""

sudo apt -y autoremove
echo ""

sudo apt -y clean
echo ""

sudo apt -y autoclean
echo ""

echo "Konec update skriptu..."
sleep 2

