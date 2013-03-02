#!/bin/bash

##############################
### Homebrew               ###
##############################
# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install atool lftp mediainfo mkvtoolnix movgrab mplayer trash tree vim
brew install git --without-completions
brew install imagemagick --use-png --use-tiff
brew install ffmpeg --with-libvpx --with-libvorbins --with-theora
brew install zsh --disable-etcdir

# Install howdoi
# This might be needed due to an error while installing (more information at https://github.com/gleitz/howdoi)
sudo chmod -R go+w /Library/Python/2.7/site-packages/
# Install
brew install https://raw.github.com/gleitz/howdoi/master/howdoi.rb

##############################
### Brew cask              ###
##############################
# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
APPS_TO_INSTALL="alfred dropbox f-lux github google-chrome google-chrome-canary keka mplayerx skype spectacle sublime-text transmission xtra-finder"
brew cask install ${APPS_TO_INSTALL}

# Move .app files to /Applications/
for APP in ${APPS_TO_INSTALL}
do
	mv /usr/local/Caskroom/${APP}/*/*.app /Applications/
done

# Remove leftovers from /usr/bin/Caskroom/
brew cask uninstall ${APPS_TO_INSTALL}

for APP in ${APPS_TO_INSTALL}
do
	mv /usr/local/Caskroom/${APP}/ ${HOME}/.Trash/
done

##############################
### Cleanup cache          ###
##############################
brew cleanup --force -s
rm -rf $(brew --cache)
