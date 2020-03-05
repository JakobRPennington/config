#!/bin/bash

# Check for root
if ! [ $(id -u) = 0 ]; then
   echo "Run me again as root."
   exit 1
fi

# Install packages
apt-get install -y zsh

# Set up oh-my-zsh
CHSH=yes RUNZSH=no KEEP_ZSHRC=yes sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

# Install powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Copy zsh config
cp ./zsh/.zshrc ~/.zshrc

# Change default shell to zsh
chsh --shell $(which zsh) $(whoami)
