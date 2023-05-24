#!/bin/bash

zipFile=$1
destination="~/.local/share/fonts/"

mkdir -p $destination 
cp $zipFile $destination 

pushd .
cd $destination

unzip $zipFile
rm $zipFile
fc-cache -fv

popd
