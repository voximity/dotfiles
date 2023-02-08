#!/usr/bin/env bash

# install picom
sudo dnf install -y -q picom

# symlink our config
ln -nrsf ./configs/picom ~/.config/picom
