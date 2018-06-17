install_brew() {
  renew_sudo
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  brew analytics off
}

install_python() {
  brew install python
  # install some eggs
  pip install neovim
}

install_ruby() {
  brew install ruby
  # install some gems
  gem install --no-document maid neovim nokogiri pry redcarpet ronn rubocop video_transcoding watir
  gem install --no-document pygments.rb # needed for installing ghi with brew
}

install_node() {
  brew install node
  # install some packages
  npm install --global eslint eslint-plugin-immutable eslint-plugin-shopify jsonlint neovim nightmare pageres-cli prettier
}
