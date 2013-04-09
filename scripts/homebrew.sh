#!/bin/bash

##############################
### Homebrew               ###
##############################
# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install atool cclive cpulimit iterm2 lftp mediainfo mkvtoolnix mplayer trash tree vim
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
APPS_TO_INSTALL="alfred dropbox f-lux google-chrome google-chrome-canary keka macvim mplayerx skype spectacle sublime-text transmission xtra-finder"
brew cask install ${APPS_TO_INSTALL}

# Move .app files to /Applications/
for APP in ${APPS_TO_INSTALL}
do
	find "/usr/local/Caskroom/${APP}" -iname "${APP}.app" -print0 | xargs -0 -I {} mv {} /Applications/
done

# Get mvim
find /usr/local/Caskroom/macvim -iname "mvim" -exec mv -v "{}" /usr/local/bin/ \;

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
