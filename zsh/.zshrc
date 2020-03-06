# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set ZSH theme
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
