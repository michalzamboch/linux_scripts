#!/bin/bash

clean ()
{
	echo
	echo "Cleaning..."
	sudo apt -y autoremove
	sudo apt -y clean
	sudo apt -y autoclean
}

update ()
{
	echo
	echo "Updating..." 
	sudo apt -y update
	sudo apt -y upgrade
}

update
sudo apt -y install $(cat ./configs/apt_packages.txt) 
clean

