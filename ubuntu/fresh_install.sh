#!/bin/bash

clean ()
{
	sudo apt -y autoremove
	echo ""

	sudo apt -y clean
	echo ""

	sudo apt -y autoclean
	echo ""
}

update ()
{
	echo "Update script start..."
	sudo apt-get -y update
	echo ""

	sudo apt-get -y upgrade
	echo ""

	clean

	echo "Update script end..."
}

update()
sudo apt-get -y install $(cat ./configs/apt_packages.txt) 
clean()

# UNUSED -------------------------------------------------
# Reading packages from file
# mapfile -t software < "$packages.txt"