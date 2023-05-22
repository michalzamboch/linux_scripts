#!/bin/bash

sudo dnf -y update
sudo dnf -y install grub-customizer

grubConfig="/etc/default/grub"
searchString="GRUB_ENABLE_BLSCFG=true"
replaceString="GRUB_ENABLE_BLSCFG=false"

finalExperssion=s/"$searchString"/"$replaceString"/
sudo sed -i "$finalExperssion" $grubConfig

finalGrubConfig=/boot/efi/EFI/fedora/grub.cfg 
sudo grub2-mkconfig -o $finalGrubConfig 
