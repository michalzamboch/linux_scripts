#!/bin/bash

# Do not un this script with sudo privileges

# DNF and Updates
sudo sh ./speedup_dnf.sh

sudo dnf -y update
sudo dnf -y upgrade

# RPM Fusion and Codecs
sudo sh ./rpm_fusion.sh
sudo sh ./install_codecs.sh
sudo dnf -y update

# DNF packages
sudo sh ./install_software.sh

# Flatpaks
sudo sh ./activate_flatpaks.sh

# Grub fix
sudo sh ./grub_fix.sh

# Aliases
sh ./create_aliases.sh


# Running scripts from common folder
pushd .
cd ../common/

# Install flatpak packages
sh ./install_flatpaks.sh

# Time system fix
sudo sh ./dualboot_time_fix.sh

# Increase vm max map count
sudo sh ./increase_vm_max_map_count.sh

# Install Starship shell prompt
sh ./font.sh
#sudo sh ./install_starship.sh

# Fish shell
#sudo sh ../common/install_fish.sh

# Firewall
sudo sh ./setup_firewall.sh

popd

sudo sh ./install_nvidia.sh

sudo reboot

