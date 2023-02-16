#!/usr/bin/env bash

gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

rm -rf ~/.config/gtk-4.0

# symlink our config
ln -nrsf ./configs/gtk ~/.config/gtk-4.0
