#!/bin/bash

# https://starship.rs/

if ! command -v starship &> /dev/null
then
  curl -sS https://starship.rs/install.sh | sh
fi

cat ./configs/starshipInit.txt >> $HOME/.bashrc
source $HOME/.bashrc
