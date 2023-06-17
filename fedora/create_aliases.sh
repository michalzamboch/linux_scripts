#!/bin/bash

cat ./configs/aliases.txt | tee -a $HOME/.bashrc
source $HOME/.bashrc
