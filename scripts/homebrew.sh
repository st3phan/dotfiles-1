#!/bin/bash

# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install tree trash mplayer lftp atool
brew install imagemagick --use-png --use-tiff
brew install zsh --disable-etcdir