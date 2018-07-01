# Switch Ctrl Key with Caps Lock
Preferences > Keyboard > Keyboard > Modification Keys

# Font
**Install Fira Code:**

using brew => 

      brew tap caskroom/fonts

      brew cask install font-fira-code

**Note:** Set up font size to 13pt

**Note:** Enable ligatures (only possible if you are using iTerm2)

# Installations

## Git
Run `brew install git`

**Note:** If Xcode Command Tools are installed then git is too. Check running `git --version`
## Zsh
Run `brew install zsh zsh-completions`
## Curl
1. Run `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null`
2. Run `brew install curl`
## Oh-my-zsh
**Via curl**
Run `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
## tmux

brew install tmux

# Dowload the dotfiles
By cloning this repository you will get all the necesary "." files for tmux, git, zsh and vim. Place them on the home folder and change the necessary paths

**To clone this repository:**

Run `git clone https://github.com/nestoralonsovina/mydotfiles.git`

# Installing the vim plugins using Vundle

## Vundle Installation

Run `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

## Install Plugins
1. Open the .vimrc file previously downloaded using `vim .vimrc` in the home directory. (a lot of errors will appear, just press enter, we are fixing that'
2. Run `:PluginInstall` and let Vundle do his job
3. Run `:so %`

**Note:** `:so` is the shortcut for :source and `%` meand the file you are on. This way we re-run the .vimrc file without closing the terminal.







