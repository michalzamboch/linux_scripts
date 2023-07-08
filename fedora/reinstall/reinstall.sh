#!/bin/bash

start_time=$SECONDS

sudo sh ./su_install.sh
sh ./user_install.sh

elapsed=$(( SECONDS - start_time ))

eval "echo Installation time: $(date -ud "@$elapsed" +'$((%s/3600/24)) days %H hr %M min %S sec')"
echo "Please, reboot the system now."

