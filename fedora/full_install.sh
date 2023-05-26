#!/bin/bash

# DNF and Updates
sh ./speedup_dnf.sh

sudo dnf -y update
sudo dnf -y upgrade

# RPM Fusion and Codecs
sh ./rpm_fusion.sh
sh ./install_codecs.sh
sudo dnf -y update

# DNF packages
sh ./install_software.sh

# Flatpaks
sh ./activate_flatpaks.sh

# Grub fix
sh ./grub_fix.sh

# Aliases
sh ./create_aliases.sh

# Driver update
sh ./driver_update.sh

# Running scripts from common folder
pushd .
cd ../common/

# Install flatpak packages
sh ./install_flatpaks.sh

# Time system fix
sh ./dualboot_time_fix.sh

# Increase vm max map count
sh ./increase_vm_max_map_count.sh

# Install Starship shell prompt
sh ./font.sh
sh ./install_starship.sh

popd

