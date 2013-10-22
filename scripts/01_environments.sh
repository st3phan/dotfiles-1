# install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# python environment
brew install pyenv
pythonVersion=$(pyenv install --list | sed 's/^  //' | grep '^2' | grep --invert-match 'dev' | tail -1)
pyenv install ${pythonVersion}
# sets the version to use, to install packages now
pyenv global ${pythonVersion}
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# install docutils (will be needed for mpv)
pip install docutils

# ruby environment
brew install chruby ruby-install
ruby-install ruby # install latest ruby
# sets the version to use, to install packages now
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.0
# install some gems
gem install bundler

# nodejs environment
brew install node
# install some packages
npm install -g bower harp
