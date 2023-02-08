#!/usr/bin/env bash

# install xmodmap
sudo dnf install -y -q xmodmap

# symlink our config
ln -nrsf ./assets/.Xmodmap ~/.config/.Xmodmap
