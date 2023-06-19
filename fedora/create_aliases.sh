#!/bin/bash

bashrcPath="/etc/bash.bashrc"

cat ./configs/aliases.txt | tee -a $bashrcPath
