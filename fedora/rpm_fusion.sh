#!/bin/bash

# Installing free and nonfree repositories
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf upgrade --refresh

sudo dnf groupupdate core

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
