#!/bin/bash

cat ./configs/aliases.txt | tee -a ~/.bashrc
source ~/.bashrc
