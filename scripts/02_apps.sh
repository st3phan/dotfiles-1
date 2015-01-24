# homebrew apps
brew install ack aria2 atool cpulimit duff exiftool eye-d3 fswatch gifify git git-extras git-ftp hr jq lftp mackup mediainfo mkvtoolnix mp4box namebench peerflix phantomjs pup ranger shellcheck trash tree watchman youtube-dl z
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
brew cask install --appdir="/Applications" airserver alfred apikitchen bartender bettertouchtool cocoadialog codekit couleurs dropbox enjoyable flashlight flux fontprep google-chrome hex-fiend hexels hydra imageoptim instacast iterm2 joinme keka key-codes leap-motion macaw node-webkit nsregextester openemu p5 platypus pokerstars processing screenflow shotcut spectacle steam sublime-text subtitles textexpander transmission whiskey yacreader

# install alternative versions
brew cask install caskroom/versions/firefoxdeveloperedition
brew cask install caskroom/versions/google-chrome-canary
brew cask install caskroom/versions/screenflow4
brew cask install caskroom/versions/vmware-fusion6

# drivers
brew cask install d235j-xbox360-controller-driver wacom-bamboo-tablet

# prefpanes, qlplugins, colorpickers
brew cask install betterzipql colorpicker-antetype colorpicker-skalacolor epubquicklook jsonlook qlcolorcode qlimagesize qlmarkdown qlstephen scriptql secrets suspicious-package

# fonts
brew tap caskroom/fonts
# multiple
brew cask install font-alegreya font-alegreya-sans font-alegreya-sans-sc font-alegreya-sc
brew cask install font-source-code-pro font-source-sans-pro font-source-serif-pro
brew cask install font-pt-mono font-pt-sans font-pt-serif
brew cask install font-merriweather font-merriweather-sans
# sans
brew cask install font-exo2 font-fira-sans font-lato font-open-sans font-open-sans-condensed font-signika
# serif
brew cask install font-abril-fatface font-gentium-book-basic font-playfair-display font-playfair-display-sc
# slab
brew cask install font-bitter font-kreon
# script
brew cask install font-pacifico

# games
#brew cask install gridwars noiz2sa rootage torustrooper

# my personal taps
# tiny-scripts
brew tap vitorgalvao/tinyscripts
brew install cask-repair contagem-edp crafts customise-terminal-notifier dropboxtimer gfv gifmaker labelcolor lovecolor olx-post pedir-gas pinboardlinkcheck podbook prfix seren unsplashdownload

# cleanup homebrew's cache
brew cleanup --force -s
rm -rf $(brew --cache)
