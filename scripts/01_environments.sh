# PATH
export PATH="/usr/local/bin:$PATH"

# make sure system is up-to-date
softwareupdate --install --all

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# python environment
brew install pyenv
python_version=$(pyenv install --list | tr -d ' ' | grep '^2' | grep --invert-match 'dev\|a' | tail -1)
pyenv install "${python_version}"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
pyenv global "${python_version}"
# install some eggs
pip install livestreamer subliminal

# ruby environment
brew install chruby ruby-install
ruby-install ruby
source "/usr/local/share/chruby/chruby.sh"
chruby ruby
# install some gems
gem install --no-ri --no-rdoc bundler chromedriver2-helper pry redcarpet ronn rubocop scss-lint site_validator watir-webdriver

# node/iojs environment
brew install nvm
export NVM_DIR="${HOME}/.nvm"
source "$(brew --prefix nvm)/nvm.sh"
nvm install iojs
nvm alias default iojs
# install some packages
npm install --global browser-sync bower divshot-cli gitignore harp html2jade imageoptim-cli jshint markdown-live nightmare pageres
