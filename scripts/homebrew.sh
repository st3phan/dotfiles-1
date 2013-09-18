#!/bin/bash

##############################
### Homebrew               ###
##############################
# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install atool cpulimit elinks lftp mediainfo mkvtoolnix mplayer nodejs terminal-notifier trash tree z
brew install avidemux --with-qt
brew install git --without-completions
brew install imagemagick --with-libtiff --with-librsvg
brew install ffmpeg --with-libvpx --with-libvorbins --with-theora
brew install macvim --with-lua
brew install vim --with-lua
brew install zsh --disable-etcdir

brew install https://raw.github.com/gist/3875486/asciiio.rb --HEAD

# Move GUI apps to /Applications/
mv /usr/local/Cellar/macvim/*/MacVim.app /Applications/
mv /usr/local/opt/avidemux/Avidemux2.6.app /Applications/

##############################
### Brew cask              ###
##############################
# Install brew cask
caskroom="/opt/homebrew-cask/Caskroom"
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
appsToInstall="air-server alfred codekit dropbox f-lux google-chrome google-chrome-canary google-hangouts instacast iterm2 keka key-codes licecap mplayerx node-webkit platypus pokerstars processing shotcut skype spectacle steam textexpander u-torrent xscope"

brew cask install ${appsToInstall}

# Copy apps to /Applications/
readlink ${HOME}/Applications/* | xargs -I {} cp -R {} /Applications/

# Remove them from homebrew-cask's directory
brew cask uninstall ${appsToInstall}
rm -r ${caskroom}/*

##############################
### Cleanup cache          ###
##############################
brew cleanup --force -s
rm -rf $(brew --cache)
