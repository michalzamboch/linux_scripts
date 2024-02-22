#!/bin/bash

sudo apt update
sudo apt install x11vnc

sudo cp ./configs/x11vnc.service /lib/systemd/system/x11vnc.service

sudo systemctl daemon-reload
sudo systemctl enable x11vnc.service
sudo systemctl start x11vnc.service
