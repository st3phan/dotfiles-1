#!/bin/bash

##############################
### Homebrew               ###
##############################
# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install atool cpulimit iterm2 lftp mediainfo mkvtoolnix mplayer trash tree vim
brew install git --without-completions
brew install imagemagick --with-libtiff --with-librsvg
brew install ffmpeg --with-libvpx --with-libvorbins --with-theora
brew install zsh --disable-etcdir

##############################
### Brew cask              ###
##############################
# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
appsToInstall="air-server alfred avidemux dropbox f-lux google-chrome google-chrome-canary instacast keka macvim mplayerx path-finder processing skype spectacle steam u-torrent xscope"

brew cask "${appsToInstall}"

# Copy apps to /Applications/
for app in $(readlink ${HOME}/Applications/*); do
	mv "${app}" "/Applications/"
done

# Remove them from homebrew-cask's directory
brew cask uninstall ${appsToInstall}
rm -r "/opt/homebrew-cask/Caskroom/*"

##############################
### Cleanup cache          ###
##############################
brew cleanup --force -s
rm -rf $(brew --cache)
