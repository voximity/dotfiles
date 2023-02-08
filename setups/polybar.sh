#!/usr/bin/env bash

# install polybar
sudo dnf install -y -q polybar xrandr

# symlink our config
chmod +x ./configs/polybar/*.sh
ln -nrsf ./configs/polybar ~/.config/polybar
