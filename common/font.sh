#!/bin/bash

pushd .
cd $HOME/Downloads/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/DroidSansMono.zip

zipFile="DroidSansMono.zip"
destination="$HOME/.local/share/fonts/"

mkdir -p $destination 
mv $zipFile $destination 

cd $destination

unzip $zipFile
rm $zipFile
fc-cache -fv

popd
