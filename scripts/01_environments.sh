# PATH
export PATH="/usr/local/bin:$PATH"

# make sure system is up-to-date
softwareupdate --install --all

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# python environment
brew install python
# install some eggs
pip install livestreamer subliminal

# ruby environment
brew install ruby
# install some gems
export GEM_HOME="$(brew --prefix)"
gem install --no-ri --no-rdoc bundler chromedriver2-helper pry redcarpet ronn rubocop scss-lint site_validator watir-webdriver

# node/iojs environment
brew install nvm
export NVM_DIR=~/.nvm
source "$(brew --prefix nvm)/nvm.sh"
nvm install iojs
# install some packages
npm install --global browser-sync bower divshot-cli gitignore harp html2jade imageoptim-cli jshint markdown-live nightmare pageres
