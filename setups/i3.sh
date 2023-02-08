#!/usr/bin/env bash

# install i3
sudo dnf install -y -q i3 python3-pip

# install i3 agenda
echo "Grabbing i3-agenda..."
sudo pip3 install -q \
    python-bidi \
    google-api-python-client \
    google-auth-httplib2 \
    google-auth-oauthlib \
    typing_extensions

cd ./configs/i3
if [ ! -d i3-agenda ]; then
    git clone -q https://github.com/rosenpin/i3-agenda
fi
cd ../..

# symlink our config
ln -nrsf ./configs/i3 ~/.config/i3
