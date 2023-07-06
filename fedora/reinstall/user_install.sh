#!/bin/bash

# Aliases
sh ../create_aliases.sh


# Running scripts from common folder
pushd .
cd ../../common/

# Install flatpak packages
sh ./install_flatpaks.sh

# Install fonts 
sh ./font.sh

popd
