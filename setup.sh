#!/usr/bin/env bash

echo "Preparing..."

mkdir -p ~/.config

chmod +x ./setups/*.sh
for f in ./setups/*.sh; do
    modname=$(basename -- $f .sh)
    echo "Setting up $modname..."
    $f $@
done
