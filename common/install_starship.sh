#!/bin/bash

# https://starship.rs/

curl -sS https://starship.rs/install.sh | sh
cat ./configs/starshipInit.txt >> $HOME/.bashrc
source $HOME/.bashrc
