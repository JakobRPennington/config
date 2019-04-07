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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Config powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context root_indicator dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history public_ip time)
POWERLEVEL9K_MODE='awesome-fontconfig'

# Disable silly colours for writable directories
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"