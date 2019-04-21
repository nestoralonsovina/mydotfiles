# Path to your oh-my-zsh installation
export ZSH=/Users/nestoralonsovina/.oh-my-zsh
export PATH="/Users/nestoralonsovina/anaconda/bin:$PATH"
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTFILE=~/.zhistory

plugins=(git, vi-mode)
# Set name of the theme to load.
ZSH_THEME="hyperzsh"
# Hyphen-insensitive completion.
HYPEN_INSENSITIVE="true"
# Enable command auto-correction
ENABLE_CORRECTION="true"
# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"
# Time format
HIST_STAMPS="mm/dd/yyyy"
# Plugins

source $ZSH/oh-my-zsh.sh
source $HOME/.exports
source $HOME/.functions


# shortcuts
alias cd..="cd .."
alias ..="cd .."
alias ...='cd ../..'
alias l='ls -la'

plugins=(git, zsh-256color, tmux, osx, docker, zsh-syntax-highlighting)
export PATH="/usr/local/opt/ruby/bin:$PATH"
