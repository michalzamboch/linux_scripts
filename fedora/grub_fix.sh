#!/bin/bash

sudo dnf install grub-customizer

grubConfig="/etc/default/grub"
searchString="GRUB_ENABLE_BLSCFG=true"
replaceString="GRUB_ENABLE_BLSCFG=false"

finalExperssion=s/"$searchString"/"$replaceString"/
echo $finalExperssion

sudo sed -i '$finalExperssion' $grubConfig
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
