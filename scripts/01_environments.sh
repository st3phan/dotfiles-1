install_brew() {
  renew_sudo
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  brew analytics off
}

install_python() {
  brew install python python3
  # install some eggs
  pip2 install neovim
  pip3 install neovim
}

install_ruby() {
  brew install ruby
  # install some gems
  gem install --no-document bundler maid neovim pry redcarpet rubocop site_validator video_transcoding watir
  gem install --no-document pygments.rb # needed for installing ghi with brew
}

install_node() {
  brew install node yarn
  yarn config set prefix "$(brew --prefix)"
  yarn config set ignore-engines
  # install some packages
  yarn global add eslint eslint-plugin-immutable eslint-plugin-shopify jsonlint nightmare pageres-cli ronn webcoach write-good
}
