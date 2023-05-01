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

declare -a software
software=("git"
		  "neofetch"
		  "neovim"
		  "python3"
		  "pip3")

update()
sudo apt-get install "${software[@]}" -yy


# UNUSED -------------------------------------------------
# Reading packages from file
# mapfile -t software < "$packages.txt"