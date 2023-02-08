#!/usr/bin/env bash

# install zsh
sudo dnf install -y -q zsh util-linux-user

# install oh my zsh if not installed
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# copy custom themes to oh my zsh themes
cp -a ./configs/zsh/themes/. ~/.oh-my-zsh/themes/

# set zsh as default shell
if [[ "$SHELL" != "/usr/bin/zsh" ]]; then
    chsh -s /usr/bin/zsh
    echo "Shell changed to zsh. It may not update until you log out"
fi

# symlink our config
rm -rf ~/.zshrc
ln -nsrf ./configs/zsh/.zshrc ~/.zshrc
