#!/bin/bash

dnfConfigLocation="/etc/dnf/dnf.conf"
confComment="# Added for speed"

if ! grep -q $confComment "$dnfConfigLocation" then
  sudo cat ./configs/dnf-upgrade.txt >> $dnfConfigLocation 
fi
