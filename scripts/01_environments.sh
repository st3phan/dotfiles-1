install_brew() {
  renew_sudo
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  # disable analytics
  git config --file="$(brew --repository)/.git/config" --replace-all homebrew.analyticsdisabled true
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
  brew reinstall nvm
  export NVM_DIR="${HOME}/.nvm"
  source "$(brew --prefix nvm)/nvm.sh"
  nvm install node
  nvm alias default node
  # install some packages
  npm install --global eslint eslint-plugin-immutable eslint-plugin-shopify how2 jsonlint nativefier nightmare npm-check-updates pageres-cli watch webcoach
}
