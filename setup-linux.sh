#!/bin/bash

# Check for root
if ! [ $(id -u) = 0 ]; then
   echo "Run me again as root."
   exit 1
fi

# Copy git config
cp ./git/.gitconfig ~/.gitconfig

# Install packages
apt-get install -y zsh

# Set up oh-my-zsh
CHSH=yes RUNZSH=no KEEP_ZSHRC=yes sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

# Install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Copy zsh config
cp ./zsh/.zshrc ~/.zshrc
cp ./zsh/.p10k.zsh ~/.p10k.zsh

# Change default shell to zsh
chsh --shell $(which zsh) $(whoami)
