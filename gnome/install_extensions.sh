#!/bin/bash

input="./configs/extensions.txt"

while IFS= read -r line
do
  echo "$line"
  gnome-extensions install $line
done < "$input"

sudo dnf install gnome-tweaks

