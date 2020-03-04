#!/bin/bash

# Check for root
if ! [ $(id -u) = 0 ]; then
   echo "Run me again as root."
   exit 1
fi

# Install packages
apt-get install -y zsh

# Change default shell to zsh
chsh --shell /bin/zsh $(whoami)

# Copy zsh config
cp ./zsh/.zshrc ~/.zshrc

# Install powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Set up oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
