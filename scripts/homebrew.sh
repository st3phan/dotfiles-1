#!/bin/bash

##############################
### Homebrew               ###
##############################
# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install atool cpulimit elinks lftp mediainfo mkvtoolnix mplayer node terminal-notifier trash tree z
brew install git --without-completions
brew install imagemagick --with-libtiff --with-librsvg
brew install ffmpeg --with-libvpx --with-libvorbins --with-theora
brew install macvim --with-lua
brew install vim --with-lua
brew install zsh --disable-etcdir

brew tap mpv-player/mpv
brew install --HEAD mpv --with-dist-bundle

brew install https://gist.github.com/rogeriopradoj/6672302/raw/4cb8e7054ea01b29f67a7e2e2475a4028c553071/asciinema.rb --HEAD
# symlink python to python2, so asciinema works correctly
sudo ln -s /usr/bin/python /usr/bin/python2

# Move GUI apps to /Applications/
mv /usr/local/Cellar/macvim/*/MacVim.app /Applications/
mv /usr/local/Cellar/mpv/HEAD/mpv.app /Applications/

##############################
### Brew cask              ###
##############################
# Install brew cask
caskroom="/opt/homebrew-cask/Caskroom"
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
appsToInstall="air-server alfred codekit dropbox f-lux google-chrome google-chrome-canary google-hangouts instacast iterm2 keka key-codes licecap node-webkit platypus pokerstars processing shotcut skype spectacle steam textexpander u-torrent xscope"

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
