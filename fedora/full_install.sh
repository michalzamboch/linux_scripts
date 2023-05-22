#!/bin/bash

# DNF and Updates
sh ./speedup_dnf.sh

dnf -y update
dnf -y upgrade

# Time system fix
sh ../common/dualboot_time_fix.sh

# Increase vm max map count
sh ../common/increase_vm_max_map_count.sh

# Grub fix
sh ./grub_fix.sh

# Aliases
sh ./create_aliases.sh

# RPM Fusion and Codecs
sh ./rpm_fusion.sh
sh ./install_codecs.sh

# DNF packages
sh ./install_software.sh

# Flatpaks
sh ./activate_flatpaks.sh
sh ../common/install_flatpaks.sh

# Driver update
sh ./driver_update.sh
