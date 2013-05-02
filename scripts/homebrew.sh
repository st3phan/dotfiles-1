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
# Caskroom directory
CASKROOM="/opt/homebrew-cask/Caskroom"

# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
APPS_TO_INSTALL="alfred avidemux dropbox f-lux google-chrome google-chrome-canary keka macvim mplayerx path-finder skype spectacle steam u-torrent" 
brew cask install ${APPS_TO_INSTALL}

# Move .app files to /Applications/
for APP in ${APPS_TO_INSTALL}
do
	find "${CASKROOM}/${APP}" -iname "${APP}.app" -print0 | xargs -0 -I {} mv {} /Applications/
done

# Get mvim
find ${CASKROOM}/macvim -iname "mvim" -exec mv -v "{}" /usr/local/bin/ \;

# Remove leftovers from Caskroom's directory
brew cask uninstall ${APPS_TO_INSTALL}

for APP in ${APPS_TO_INSTALL}
do
	mv ${CASKROOM}/${APP}/ ${HOME}/.Trash/
done

##############################
### Cleanup cache          ###
##############################
brew cleanup --force -s
rm -rf $(brew --cache)
