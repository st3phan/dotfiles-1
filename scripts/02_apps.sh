install_brew_apps() {
  brew install mpv --with-bundle
  brew install sox --with-flac --with-lame --with-libvorbis
  brew install zsh --without-etcdir

  brew install aria2 chromedriver cpulimit duti eye-d3 ffmpeg ghi git git-ftp handbrake haskell-stack hr httpie imagemagick jq mas massren mediainfo mkvtoolnix mp4v2 pup ripgrep rmlint shellcheck subliminal svgcleaner trash tree youtube-dl z

  # install zsh_plugins
  brew install zsh-autosuggestions zsh-completions zsh-history-substring-search zsh-syntax-highlighting

  # install software from other taps
  brew install neovim/neovim/neovim
  brew install vitorgalvao/geotoad/geotoad
  brew install vitorgalvao/kepubify/kepubify

  # install and configure tor
  brew install tor torsocks
  cp "$(brew --prefix)/etc/tor/torrc.sample" "$(brew --prefix)/etc/tor/torrc"
  echo 'ExitNodes {us}' >> "$(brew --prefix)/etc/tor/torrc"
}

install_cask_apps() {
  renew_sudo # to make the Caskroom on first install
  brew cask install alfred apple-events atom bartender bettertouchtool blockblock dolphin dropbox electron-api-demos fog gifloopcoder gitup google-chrome imageoptim imitone iterm2 keka lulu oversight processing shotcut spectacle steam torbrowser transmission whatsyoursign wwdc yacreader

  brew cask install pokerstars --language='PT'

  # install alternative versions
  brew tap caskroom/versions
  brew cask install affinity-designer-beta affinity-photo-beta dash3 google-chrome-canary screenflow5

  # drivers
  brew tap caskroom/drivers
  renew_sudo
  brew cask install xbox360-controller-driver-unofficial

  # prefpanes, qlplugins, colorpickers
  brew cask install betterzipql epubquicklook qlcolorcode qlimagesize qlmarkdown qlplayground qlstephen quicklook-json quicklookase

  # fonts
  brew tap caskroom/fonts
  # multiple
  brew cask install font-alegreya font-alegreya-sans font-alegreya-sans-sc font-alegreya-sc
  brew cask install font-fira-mono font-fira-sans
  brew cask install font-input
  brew cask install font-merriweather font-merriweather-sans
  brew cask install font-pt-mono font-pt-sans font-pt-serif
  brew cask install font-source-code-pro font-source-sans-pro font-source-serif-pro
  # sans
  brew cask install font-aileron font-bebas-neue font-exo2 font-montserrat font-lato font-open-sans font-open-sans-condensed font-signika
  # serif
  brew cask install font-abril-fatface font-butler font-gentium-book-basic font-playfair-display font-playfair-display-sc
  # slab
  brew cask install font-bitter font-kreon
  # script
  brew cask install font-pecita

  # games
  #brew cask install gridwars noiz2sa rootage torustrooper
}

install_tinyscripts() {
  brew tap vitorgalvao/tiny-scripts
  brew install annotmd cask-repair climergebutton contagem-edp fastmerge gfv gifmaker human-media-time labelcolor lovecolor pedir-gas pinboardbackup pinboardlinkcheck pinboardwaybackmachine podbook prfixmaster progressbar ringtonemaker seren trello-purge-archives
}

install_mas_apps() {
  readonly local mas_apps=('1password=443987910' 'affinity-designer=824171161' 'affinity-photo=824183456' 'colorsnapper2=969418666' 'dropshelf=540404405' 'haskell=841285201' 'ia-writer=775737590' 'quiver=866773894' 'reeder=880001334' 'spark=1176895641' 'trello=1278508951' 'tweetbot=557168941' 'xcode=497799835')

  mas signin "${mas_email}" "${mas_password}"

  for app in "${mas_apps[@]}"; do
    local app_id="${app#*=}"
    mas install "${app_id}"
  done
}
