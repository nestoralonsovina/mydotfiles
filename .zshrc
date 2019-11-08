# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/nalonso/.oh-my-zsh"

ZSH_THEME="hyperzsh"

plugins=(git osx z )

alias cd..="cd .."
alias ..="cd .."
alias ...='cd ../..'
alias l='ls -la'


source $ZSH/oh-my-zsh.sh
source $HOME/.brewconfig.zsh

export PATH="/goinfre/miniconda/bin:$PATH"
