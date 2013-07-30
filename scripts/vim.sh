#!/bin/bash

# dotfile
mv "/tmp/dotfiles/files/vimrc" "${HOME}/.vimrc"

# download and configure neobundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +NeoBundleInstall +qall
