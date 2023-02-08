#!/usr/bin/env bash

# install alacritty
sudo dnf install -y -q alacritty

# install alacritty-themes
cd configs/alacritty
if [ ! -d themes ]; then
    git clone -q https://github.com/alacritty/alacritty-theme themes
fi
cd ../..

# symlink our config
ln -nrsf ./configs/alacritty ~/.config/alacritty
