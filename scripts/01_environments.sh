install_brew() {
  renew_sudo
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  # disable analytics
  brew analytics off
}

install_python() {
  brew install python3
  # install some eggs
  # pip3 install ...
}

install_ruby() {
  brew install ruby
  # install some gems
  gem install --no-document bundler chromedriver2-helper maid pry redcarpet rubocop site_validator video_transcoding watir-webdriver
  gem install --no-document pygments.rb # needed for installing ghi with brew
}

install_node() {
  brew install node --without-npm
  brew install yarn
  # install some packages
  yarn global add eslint eslint-plugin-immutable eslint-plugin-shopify jsonlint nativefier nightmare pageres-cli webcoach
}
