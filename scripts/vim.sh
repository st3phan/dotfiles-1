#!/bin/bash

# dotfile
mv "/tmp/dotfiles/files/vimrc" "${HOME}/.vimrc"

# download and configure vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# compile YouCompleteMe
cd "${HOME}/.vim/bundle/YouCompleteMe"
./install.sh --clang-completer
cd -
