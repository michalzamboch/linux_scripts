#!/bin/bash

# https://fishshell.com/docs/current/index.html

sudo echo /usr/local/bin/fish | sudo tee -a /etc/shells
sudo chsh -s /usr/local/bin/fish
