# Path to your oh-my-zsh installation
export ZSH=/Users/nestoralonsovina/.oh-my-zsh
# Set name of the theme to load.
ZSH_THEME="robbyrussell"
# Hyphen-insensitive completion.
HYPEN_INSENSITIVE="true"
# Enable command auto-correction
ENABLE_CORRECTION="true"
# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"
# Time format
HIST_STAMPS="mm/dd/yyyy"
# Plugins
plugins=(git, zsh-256color, tmux, osx, docker)

source $ZSH/oh-my-zsh.sh

# shortcuts
alias cd..="cd .."
alias ..="cd .."
alias ...='cd ../..'
alias l='ls -la'
alias 42="cd /Users/nestoralonsovina/Documents/workshop/workshop/42Paris"
alias 42FileChecker='bash ~/42FileChecker/42FileChecker.sh'
#tmus stuff
alias tmux="TERM=screen-256color-bce tmux"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
