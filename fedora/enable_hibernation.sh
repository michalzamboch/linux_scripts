#!/bin/bash

sudo mkswap $1
sudo swapon $1

partitionInfo=lsblk --noheadings -o UUID $1
uuid=grep -oP '(?<=<).*?(?=>)' <<< "$partitionInfo"

resumeConfig="/etc/dracut.conf.d/resume.conf"
resumeInfo="add_dracutmodules+=\" resume \""
sudo touch $resumeConfig
sudo echo $resumeInfo >> $resumeConfig

sudo dracut --regenerate-all --force
sudo lsinitrd -m

grubFile="/etc/default/grub"
grubFileEntry="GRUB_CMDLINE_LINUX=\"[...] resume=UUID=<"$uuid">\""
sudo echo $grubFileEntry >> $grubFile

sudo grub2-mkconfig -o /boot/grub2/grub.cfg
