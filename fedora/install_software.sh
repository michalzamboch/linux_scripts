#!/bin/bash

# Dnf packages
sudo dnf -y update
sudo dnf -y upgrade
input="./configs/dnf_packages.txt"
sudo dnf -y install $(cat $input)

# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf -y update
sudo dnf -y install code

# Brave
sudo dnf -y install dnf-plugins-core
sudo dnf -y config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf -y install brave-browser

# Astro vim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim $HOME/.config/nvim

# Xmake
curl -fsSL https://xmake.io/shget.text | bash

# Starship
curl -sS https://starship.rs/install.sh | sh

# Clean up
sudo dnf -y autoremove
