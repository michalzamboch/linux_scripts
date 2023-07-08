#!/bin/bash

su_install() {
  pushd .
  cd ..

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

  # Install nvidia drvers
  sh ./install_nvidia.sh

  popd

  # Running scripts from common folder
  pushd .
  cd ../../common/

  # Time system fix
  sh ./dualboot_time_fix.sh

  # Increase vm max map count
  sh ./increase_vm_max_map_count.sh

  # Firewall
  sh ./setup_firewall.sh

  popd
}

user_install() {
  pushd .
  cd ..

  # Aliases
  sh ./create_aliases.sh

  popd

  # Running scripts from common folder
  pushd .
  cd ../../common/

  # Install flatpak packages
  sh ./install_flatpaks.sh

  # Install font
  sh ./font.sh

  popd
}

sudo su
su_install
exit

user_install
