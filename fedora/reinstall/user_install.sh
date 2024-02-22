#!/bin/bash

pushd .
cd ..

# Aliases
sh ./create_aliases.sh

popd

# Running scripts from common folder
pushd .
cd ../../common/

# Install font
sh ./font.sh

# Starship
sh ./install_starship.sh

# Install flatpak packages
sh ./install_flatpaks.sh

popd

