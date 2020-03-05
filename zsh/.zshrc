export TERM="xterm-256color"
export COLORTERM=""

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set ZSH theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git command-not-found encode64 extract ng node npm wd)

source $ZSH/oh-my-zsh.sh

# User configuration

# Config powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context root_indicator dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_MODE='awesome-fontconfig'

# Disable silly colours for writable directories
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
zstyle ':completion:*' list-colors

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set docker to use Windows daemon
export DOCKER_HOST=tcp://localhost:2375

# Aliases
nmap-tcp-fast(){
  nmap --disable-arp-ping -Pn -oA nmap-tcp-fast $1
}

nmap-tcp-full(){
  nmap --disable-arp-ping -Pn -A -p- -sC -oA nmap-tcp-allports $1
}

nmap-udp-fast(){
  nmap --disable-arp-ping -Pn -sU -oA nmap-udp-fast $1
}

nmap-udp-full(){
  nmap --disable-arp-ping -Pn -sU -p- -A -oA nmap-udp-allports $1
}

theharvester(){
  theharvester -b all -d $1
}
