#!/bin/bash

sudo dnf -y update
sudo dnf install neovim vlc steam neofetch git htop nodejs lua luarocks love timeshift qemu @Virtualization

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf update
sudo dnf install code

