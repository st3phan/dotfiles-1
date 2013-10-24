# homebrew apps
brew install asciinema atool cpulimit elinks lftp mediainfo mkvtoolnix trash tree z
brew install git --without-completions
brew install imagemagick --with-libtiff
brew install ffmpeg --with-libvpx --with-libvorbins --with-theora
brew install vim --with-lua
brew install zsh --disable-etcdir

# install mpv
brew tap mpv-player/mpv
brew install --HEAD mpv --with-dist-bundle
mv /usr/local/Cellar/mpv/HEAD/mpv.app /Applications/ # Move GUI to /Applications/

# brew-cask apps
# install brew cask
caskroom="/opt/homebrew-cask/Caskroom"
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps
appsToInstall="air-server alfred dropbox f-lux google-chrome google-chrome-canary google-hangouts imageoptim instacast iterm2 keka key-codes licecap node-webkit platypus pokerstars processing shotcut skype spectacle steam textexpander transmission xscope"

brew cask install ${appsToInstall}

# Copy apps to /Applications/
readlink ${HOME}/Applications/* | xargs -I {} cp -R {} /Applications/

# Remove them from homebrew-cask's directory
brew cask uninstall ${appsToInstall}
rm -r ${caskroom}/*


# cleanup homebrew's cache
brew cleanup --force -s
rm -rf $(brew --cache)
