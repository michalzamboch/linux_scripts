#!/bin/bash

flatpak -y update
input="./configs/packages.txt"

while IFS= read -r line
do
  echo "$line"
  flatpak -y install $line
done < "$input"

