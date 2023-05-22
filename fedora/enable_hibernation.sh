#!/bin/bash

sudo mkswap /dev/sda3
sudo swapon /dev/sda3

partitionInfo=lsblk --noheadings -o UUID /dev/sda3
uuid=grep -oP '(?<=<).*?(?=>)' <<< "$partitionInfo"

resumeConfig="/etc/dracut.conf.d/"
resumeInfo="add_dracutmodules+=\" resume \""
echo $resumeInfo >> $resumeConfig

sudo dracut --regenerate-all --force
sudo lsinitrd -m

grubFile="/etc/default/grub"
grubFileEntry="GRUB_CMDLINE_LINUX=\"[...] resume=UUID=<"$uuid">\""
echo $grubFileEntry >> $grubFile

sudo grub2-mkconfig -o /boot/grub2/grub.cfg
