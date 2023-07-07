#!/bin/bash

# Aliases
sh ../create_aliases.sh


# Running scripts from common folder
pushd .
cd ../../common/

# Install flatpak packages
sh ./install_flatpaks.sh

# Install font
sh ./font.sh

popd

