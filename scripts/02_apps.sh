install_brew_apps() {
  brew install imagemagick --with-libtiff
  brew install ffmpeg --with-libvpx --with-libvorbis --with-openssl --with-theora --with-x265
  brew install mpv --with-bundle
  brew install sox --with-flac --with-lame --with-libvorbis
  brew install zsh --without-etcdir

  brew install aria2 asciinema asciinema2gif atool ccat cpulimit duff duti exiftool eye-d3 ghi gifify git git-extras git-ftp haskell-stack hr httpie jq lftp mediainfo mkvtoolnix mp4v2 onepass phantomjs pup shellcheck the_silver_searcher trash tree wiki youtube-dl z

  # install apps from other taps
  brew install laurent22/massren/massren
  brew install peco/peco/peco

  # install and configure tor
  brew install tor torsocks
  cp "$(brew --prefix)/etc/tor/torrc.sample" "$(brew --prefix)/etc/tor/torrc"
  echo 'ExitNodes {us}' >> "$(brew --prefix)/etc/tor/torrc"
}

install_brew_head_apps() {
  readonly local head_formulas='neovim/neovim/neovim'

  for formula in ${head_formulas}; do
    formula_name=$(basename "${formula}")

    [[ $(brew list "${formula_name}" 2> /dev/null) ]] && brew uninstall ${formula} # if formula is installed, uninstall it first
    brew install --HEAD neovim ${head_formulas}
  done
}

make_caskroom() {
  sudo -S mkdir -p /opt/homebrew-cask/Caskroom <<< "${sudo_password}" 2> /dev/null
  sudo -S chown -R ${USER}:staff /opt/homebrew-cask <<< "${sudo_password}" 2> /dev/null
}

install_cask_apps() {
  brew cask install --appdir='/Applications' alfred bartender bettertouchtool calibre drop-to-gif dropbox duelystlauncher enjoyable flux fog gifloopcoder gitup google-chrome handbrakecli imageoptim imitone jadengeller-helium keka key-codes p5 processing screenflow shotcut spectacle steam terminology textexpander torbrowser transmission yacreader

  # install alternative versions
  brew tap caskroom/versions
  brew cask install --appdir='/Applications' affinity-designer-beta affinity-photo-beta airmail-beta atom-beta google-chrome-canary iterm2-beta openemu-experimental pokerstarseu vmware-fusion6

  # drivers
  renew_sudo
  brew cask install xbox360-controller-driver

  # prefpanes, qlplugins, colorpickers
  brew cask install betterzipql colorpicker-skalacolor epubquicklook qlcolorcode qlimagesize qlplayground qlstephen quicklook-json ttscoff-mmd-quicklook

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
  brew cask install font-abril-fatface font-butler font-gentium-book-basic font-playfair-display font-playfair-display-sc
  # slab
  brew cask install font-bitter font-kreon
  # script
  brew cask install font-pacifico

  # games
  #brew cask install gridwars noiz2sa rootage torustrooper
}

install_tinyscripts() {
  brew tap vitorgalvao/tinyscripts
  brew install annotmd cask-repair contagem-edp crafts customise-terminal-notifier fastmerge gifmaker gfv human-media-time labelcolor lovecolor pedir-gas pinboardlinkcheck podbook prfixmaster seren
}
