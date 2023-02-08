#!/usr/bin/env bash

# install zsh
sudo dnf install -y -q zsh

# install oh my zsh if not installed
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# set zsh as default shell
if [[ "$SHELL" != "/usr/bin/zsh" ]]; then
    chsh -s /usr/bin/zsh
fi

# symlink our config
rm -rf ~/.zshrc
ln -nsrf ./configs/.zshrc ~/.zshrc
