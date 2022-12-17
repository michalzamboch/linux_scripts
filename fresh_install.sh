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
	echo "Start update skriptu..."
	sudo apt-get update
	echo ""

	sudo apt-get -y upgrade
	echo ""

	clean

	echo "Konec update skriptu..."
}

declare -a programy
programy=("git"
		  "neofetch"
		  "neovim")

#echo ${programy[*]}

len=${#programy[@]}
echo ${len}