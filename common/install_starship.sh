#!/bin/bash

# https://starship.rs/

bashInvoke="eval \"$(starship init bash)\""

curl -sS https://starship.rs/install.sh | sh
cat $bashInvoke >> $HOME/.bashrc
source $HOME/.bashrc
