#!/bin/bash

# Install virtualization tools
if grep -E '(vmx|svm)' /proc/cpuinfo; then
    sudo dnf install @virtualization

    sudo systemctl start libvirtd
    sudo systemctl enable libvirtd

    sudo usermod -a -G libvirt $(whoami)

    lsmod | grep kvm
fi
