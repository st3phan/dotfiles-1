#!/bin/bash

# Download and install pathogen
mkdir -p ${HOME}/.vim/autoload ${HOME}/.vim/bundle
curl -so ${HOME}/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Get 'Solarized' colorscheme
git clone git://github.com/altercation/vim-colors-solarized.git ${HOME}/.vim/bundle/vim-colors-solarized

# Get 'Tomorrow-Theme'
mkdir -p ${HOME}/.vim/colors
git clone https://github.com/chriskempson/tomorrow-theme.git /tmp/Tomorrow-Theme/
mv /tmp/Tomorrow-Theme/vim/colors/Tomorrow-Night.vim ${HOME}/.vim/colors/

# Install plugins
# vim-surroung
git clone https://github.com/tpope/vim-surround.git ${HOME}/.vim/bundle/vim-surround
# vim-ragtag
git clone https://github.com/tpope/vim-ragtag.git ${HOME}/.vim/bundle/vim-ragtag
# tComment
git clone https://github.com/vim-scripts/tComment.git ${HOME}/.vim/bundle/tComment
# html5.vim
git clone https://github.com/othree/html5.vim.git ${HOME}/.vim/bundle/html5.vim

# dotfile
curl -L https://github.com/vitorgalvao/dotfiles/raw/master/dotfiles/files/configs/.vimrc > ${HOME}/.vimrc