#!/bin/bash

# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install atool lftp mplayer trash tree vim
brew install imagemagick --use-png --use-tiff
brew install zsh --disable-etcdir

# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

brew cask install --appdir="~/Applications" 

brew cask linkapps
