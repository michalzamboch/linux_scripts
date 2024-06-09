#!/bin/bash

clear-buffer()
{
  # discard rest of input before exiting
  while read -t 0 notused; do
     read input
     echo "ignoring $input"
  done
}

# ---------------------------------------------------

cat ./readme.txt
echo

start_time=$SECONDS

sudo sh ./su_install.sh
clear-buffer

sh ./user_install.sh
clear-buffer

elapsed=$(( SECONDS - start_time ))

eval "echo Installation time: $(date -ud "@$elapsed" +'$((%s/3600/24)) days %H hr %M min %S sec')"
echo "Please, reboot the system now."

