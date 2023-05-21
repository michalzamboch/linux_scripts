#!/bin/bash

# Increase Vm Max Map Count
# https://fedoraproject.org/wiki/Changes/IncreaseVmMaxMapCount

FILE="/etc/sysctl.d/90-override.conf"
VALUE="vm.max_map_count=2147483642"

sudo touch $FILE
sudo echo $VALUE >> $FILE
