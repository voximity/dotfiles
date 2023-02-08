#!/usr/bin/env bash

# install rofi
sudo dnf install -y -q rofi

# symlink our config
ln -nrsf ./configs/rofi ~/.config/rofi
