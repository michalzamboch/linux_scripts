#!/bin/bash

sudo dnf upgrade --refresh
sudo dnf copr enable rmnscnce/kernel-xanmod -y

sudo dnf install kernel-xanmod-edge kernel-xanmod-edge-headers
sudo dnf install kernel-xanmod-exptl kernel-xanmod-exptl-headers

