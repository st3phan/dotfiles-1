# homebrew apps
brew install aria2 asciinema atool ccat cpulimit duff duti exiftool eye-d3 ghi gifify git git-extras git-ftp hr httpie jq lftp mediainfo mkvtoolnix onepass peerflix phantomjs pup shellcheck the_silver_searcher trash tree wwdc youtube-dl z
brew install imagemagick --with-libtiff
brew install ffmpeg --with-libvpx --with-libvorbis --with-openssl --with-theora --with-x265
brew install sox --with-flac --with-lame --with-libvorbis
brew install vim --with-lua
brew install zsh --disable-etcdir

# install apps from other taps
brew install mpv-player/mpv/mpv
brew install laurent22/massren/massren
brew install peco/peco/peco
brew install --HEAD neovim/neovim/neovim

# homebrew-cask apps
# install brew cask
brew install caskroom/cask/brew-cask

# set caskroom permissions
mkdir -p /opt/homebrew-cask/Caskroom
sudo chown -R ${USER}:staff /opt/homebrew-cask

# install apps
brew cask install --appdir="/Applications" alfred awareness bartender bettertouchtool dropbox enjoyable flux google-chrome imageoptim iterm2 jadengeller-helium keka key-codes openemu p5 processing shotcut spectacle steam terminology textexpander torbrowser transmission yacreader

# install alternative versions
brew tap caskroom/versions
brew cask install affinity-designer-beta affinity-photo-beta firefoxdeveloperedition google-chrome-canary pokerstarseu screenflow4 vmware-fusion6

# drivers
brew cask install d235j-xbox360-controller-driver

# prefpanes, qlplugins, colorpickers
brew cask install betterzipql colorpicker-skalacolor epubquicklook qlcolorcode qlimagesize qlstephen quicklook-json suspicious-package ttscoff-mmd-quicklook

# fonts
brew tap caskroom/fonts
# multiple
brew cask install font-alegreya font-alegreya-sans font-alegreya-sans-sc font-alegreya-sc
brew cask install font-source-code-pro font-source-sans-pro font-source-serif-pro
brew cask install font-pt-mono font-pt-sans font-pt-serif
brew cask install font-merriweather font-merriweather-sans
brew cask install font-fira-mono font-fira-sans
# sans
brew cask install font-exo2 font-lato font-open-sans font-open-sans-condensed font-signika
# serif
brew cask install font-abril-fatface font-gentium-book-basic font-playfair-display font-playfair-display-sc
# slab
brew cask install font-bitter font-kreon
# script
brew cask install font-pacifico
# other
brew cask install font-redacted

# games
#brew cask install gridwars noiz2sa rootage torustrooper

# my personal taps
# tiny-scripts
brew tap vitorgalvao/tinyscripts
brew install annotmd cask-repair contagem-edp crafts customise-terminal-notifier fastmerge gifmaker gfv labelcolor lovecolor olx-post pedir-gas pinboardlinkcheck podbook prfixmaster seren
# cleanup homebrew's cache
brew cleanup --force -s
rm -rf $(brew --cache)

# set default apps
for ext in {mp4,mkv,avi,mpg,mpeg,avi,mp3,wav,flac,aac}; do duti -s io.mpv "${ext}" all; done # media
for ext in {zip,rar,tar,gz,bz2,7z}; do duti -s com.aone.keka "${ext}" all; done # archives
for ext in {css,html,jade,json,php,py,rb,sh}; do duti -s com.github.atom "${ext}" all; done # code

# Affinity apps (use beta versions)
duti -s com.seriflabs.affinitydesigner.beta afdesign all
duti -s com.seriflabs.affinityphoto.beta afphoto all
