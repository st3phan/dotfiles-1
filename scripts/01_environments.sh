# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

# python environment
brew install pyenv
pythonVersion=$(pyenv install --list | sed 's/^  //' | grep '^2' | grep --invert-match 'dev' | tail -1)
pyenv install ${pythonVersion}
# sets the version to use, to install packages now
pyenv global ${pythonVersion}
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# install docutils (will be needed for mpv)
pip install docutils
# install some eggs
pip install --upgrade asciinema

# ruby environment
brew install chruby ruby-install
ruby-install ruby # install latest ruby
rubyVersion=$(ruby-install | grep 'stable' | head -1 | sed 's/.*: //')
# sets the version to use, to install packages now
source /usr/local/share/chruby/chruby.sh
chruby ruby-${rubyVersion}
# install some gems
gem install bundler watir-webdriver chromedriver2-helper

# nodejs environment
brew install node
# install some packages
npm install -g browser-sync bower grunt-cli harp imageoptim-cli
