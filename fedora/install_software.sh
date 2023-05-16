#!/bin/bash

sudo dnf -y update
sudo dnf install neovim vlc steam neofetch git htop nodejs lua luarocks love timeshift qemu @Virtualization bleachbit

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf -y update
sudo dnf -y install code

# Fedy
sudo dnf copr enable kwizart/fedy
sudo dnf install fedy -y

# Brave
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser
