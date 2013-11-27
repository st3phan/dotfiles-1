# homebrew apps
brew install atool cpulimit elinks git-ftp lftp mackup mediainfo mkvtoolnix phantomjs trash tree z
brew install git --without-completions
brew install imagemagick --with-libtiff
brew install ffmpeg --with-libvpx --with-libvorbins --with-theora
brew install vim --with-lua
brew install zsh --disable-etcdir

# install mpv
brew tap mpv-player/mpv
brew install --HEAD mpv-player/mpv/libass-ct
brew install mpv --with-dist-bundle

# link GUI apps
brew linkapps

# homebrew-cask apps
# install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# set caskroom permissions
mkdir -p /opt/homebrew-cask/Caskroom
sudo chown -R ${USER}:staff /opt/homebrew-cask

# Install apps
brew cask install --appdir="/Applications" airserver alfred bartender dropbox f-lux google-chrome google-hangouts imageoptim instacast iterm2 join-me keka key-codes node-webkit platypus pokerstars processing shotcut skype spectacle steam sublime-text textexpander transmission

# Prefpanes and qlplugins
#brew cask install betterzipql jsonlook qlcolorcode qlmarkdown qlstephen scriptql suspicious-package

# cleanup homebrew's cache
brew cleanup --force -s
rm -rf $(brew --cache)