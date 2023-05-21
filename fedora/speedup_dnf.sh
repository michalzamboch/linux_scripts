#!/bin/bash

DESTINATION="/etc/dnf/dnf.conf"
COMMENT="Added for speed"

if ! grep -q "$COMMENT" $DESTINATION;
then
  sudo cat ./configs/dnf_upgrade.txt >> $DESTINATION 
fi

