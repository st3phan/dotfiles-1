# homebrew apps
brew install atool cpulimit elinks lftp mediainfo mkvtoolnix phantomjs trash tree z
install git --without-completions
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

# brew-cask apps
# install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
brew cask install air-server alfred bartender dropbox f-lux google-chrome google-chrome-canary google-hangouts imageoptim instacast iterm2 join-me keka key-codes licecap node-webkit platypus pokerstars processing shotcut skype spectacle steam sublime-text textexpander transmission xscope

# cleanup homebrew's cache
brew cleanup --force -s
rm -rf $(brew --cache)