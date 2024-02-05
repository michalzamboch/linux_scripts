#!/bin/bash

flatpak -y update
input="./configs/flatpaks.txt"

while IFS= read -r line
do
  echo "$line"
  flatpak -y install flathub $line
done < "$input"

