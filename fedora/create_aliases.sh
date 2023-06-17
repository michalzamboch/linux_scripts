#!/bin/bash

path=pwd

pushd .
cd ~

cat $path/configs/aliases.txt | tee -a .bashrc
source .bashrc

popd
