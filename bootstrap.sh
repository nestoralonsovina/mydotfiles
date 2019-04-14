#!/usr/bin/env bash

brew () {
    which brew 1>&/dev/null
    if [ ! "$?" -eq 0 ] ; then
        echo "Homebrew not installed. Attempting to install Homebrew"
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        if [ ! "$?" -eq 0 ] ; then
            echo "Something went wrong. Exiting..." && exit 1
        fi
    fi
    echo "Installing last version of Vim\n"
    brew install vim

    echo "Installing last version of Python\n"
    brew install python

    echo "Installing gdb\n"
    brew install gdb

    brew tap caskroom/fonts
    brew cask install font-fira-code

    brew cask install hyper

    brew cleanup
}

vim () {
    mkdir -p ~/.vim
    mkdir -p ~/.vim/backups
    mkdir -p ~/.vim/swaps
    mkdir -p ~/.vim/undos

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

init () {
    echo "Making a Projects folder in $PATH_TO_PROJECTS if it doesn't already exist"
    mkdir -p "$PATH_TO_PROJECTS"
    echo "Making a Playground folder in $PATH_TO_PLAYGROUND if it doesn't already exist"
    mkdir -p "$PATH_TO_PLAYGROUND"
}

link () {
    echo "This utility will symlink the files in this repo to the home directory"
    echo "Proceed? (y/n)"
    read resp
    if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
        for file in $( ls -A | grep -vE '\.exclude*|\.git$|\.gitignore|.*.md' ) ; do
            ln -sv "$PWD/$file" "$HOME"
        done
        echo "Symlinking complete"
    else
        echo "Symlinking cancelled by user"
        return 1
    fi
}

install_tools () {
    if [ $( echo "$OSTYPE" | grep 'darwin' ) ] ; then
        echo "This utility will install useful utilities using Homebrew"
        echo "Proceed? (y/n)"
        read resp
        if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
            echo "Installing useful stuff using brew. This may take a while..."
            sh brew.exclude.sh
        else
            echo "Brew installation cancelled by user"
        fi
    else
        echo "Skipping installations using Homebrew because MacOS was not detected..."
    fi
}

init
link
install_tools
vim
