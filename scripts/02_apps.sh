# homebrew apps
brew install ack atool cpulimit duff exiftool eye-d3 git git-extras git-ftp hr jq lftp mackup mediainfo mkvtoolnix mp4box namebench peerflix phantomjs ranger shellcheck trash tree watchman youtube-dl z
brew install imagemagick --with-libtiff
brew install ffmpeg --with-libvpx --with-libvorbis --with-openssl --with-theora --with-x265
brew install macvim --with-lua --custom-icons
brew install sox --with-flac --with-lame --with-libvorbis
brew install vim --with-lua
brew install zsh --disable-etcdir

# install apps from other taps
brew install mpv-player/mpv/mpv
brew install laurent22/massren/massren
brew install peco/peco/peco

# homebrew-cask apps
# install brew cask
brew install caskroom/cask/brew-cask

# set caskroom permissions
mkdir -p /opt/homebrew-cask/Caskroom
sudo chown -R ${USER}:staff /opt/homebrew-cask

# install apps
brew cask install --appdir="/Applications" airserver alfred apikitchen bartender bettertouchtool cocoadialog dropbox enjoyable flux fontprep google-chrome hex-fiend hexels hydra imageoptim instacast iterm2 joinme keka key-codes leap-motion macaw macdown node-webkit nsregextester openemu p5 platypus pokerstars processing screenflow shotcut spectacle steam sublime-text subtitles textexpander transmission

# install google-chrome-canary
brew cask install caskroom/versions/google-chrome-canary

# drivers
brew cask install xbox360-controller-driver wacom-bamboo-tablet

# prefpanes and qlplugins
brew cask install betterzipql epubquicklook jsonlook qlcolorcode qlimagesize qlmarkdown qlstephen scriptql secrets suspicious-package

# fonts
brew tap caskroom/homebrew-fonts
brew cask install font-source-code-pro

# games
#brew cask install gridwars noiz2sa rootage torustrooper

# colorpickers
brew cask install colorpicker-antetype colorpicker-skalacolor

# my personal taps
# tiny-scripts
brew tap vitorgalvao/tinyscripts
brew install cask-repair casks-audit crafts customise-terminal-notifier dropboxtimer gfv gifmaker labelcolor lovecolor olx-post pedir-gas pinboardlinkcheck podbook prfix seren unsplashdownload

# cleanup homebrew's cache
brew cleanup --force -s
rm -rf $(brew --cache)
