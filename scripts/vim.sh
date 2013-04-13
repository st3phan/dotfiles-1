#!/bin/bash

# dotfile
mv "/tmp/dotfiles/files/vimrc" "${HOME}/.vimrc"

# Download and configure vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
