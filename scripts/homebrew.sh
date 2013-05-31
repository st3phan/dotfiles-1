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
caskroom="/opt/homebrew-cask/Caskroom"
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
appsToInstall="air-server alfred avidemux codekit dropbox f-lux google-chrome google-chrome-canary instacast keka macvim mplayerx path-finder processing skype spectacle steam u-torrent xscope"

brew cask "${appsToInstall}"

# Copy apps to /Applications/
for app in $(readlink ${HOME}/Applications/*); do
	mv "${app}" "/Applications/"
done

# Get mvim
cp "${caskroom}/macvim/*/*/mvim" "/usr/local/bin/"

# Remove them from homebrew-cask's directory
brew cask uninstall ${appsToInstall}
rm -r "${caskroom}/*"

##############################
### Cleanup cache          ###
##############################
brew cleanup --force -s
rm -rf $(brew --cache)

##############################
### RVM                    ###
##############################
# Install rvm
curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled

# Install some gems
gem install cloudapp
