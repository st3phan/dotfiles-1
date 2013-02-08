#!/bin/bash

##############################
### Homebrew               ###
##############################
# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install atool lftp mediainfo movgrab mplayer trash tree vim
brew install imagemagick --use-png --use-tiff
brew install ffmpeg --with-libvpx --with-libvorbins --with-theora
brew install zsh --disable-etcdir

##############################
### Brew cask              ###
##############################
# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
APPS_TO_INSTALL="alfred dropbox f-lux github google-chrome keka mplayerx skype spectacle sublime-text transmission xtra-finder"
brew cask install ${APPS_TO_INSTALL}

# Move .app files to /Applications/
for APP in ${APPS_TO_INSTALL}
do
	mv /usr/local/Cellar/${APP}/*/*.app /Applications/
done

# Remove leftovers from /usr/bin/Cellar
brew cask uninstall ${APPS_TO_INSTALL}

for APP in ${APPS_TO_INSTALL}
do
	mv /usr/local/Cellar/${APP}/ ${HOME}/.Trash/
done

##############################
### Cleanup cache          ###
##############################
brew cleanup --force -s
rm -rf $(brew --cache)