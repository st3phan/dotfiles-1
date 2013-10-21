#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# python environment
curl -s https://raw.github.com/brainsik/virtualenv-burrito/master/virtualenv-burrito.sh | exclude_profile=1 $SHELL
# install docutils (will be needed for mpv)
source "${HOME}/.venvburrito/startup.sh"
mkvirtualenv default
pip install docutils

# ruby environment
brew install chruby ruby-install
ruby-install ruby # install latest ruby
# install some gems
gem install bundler

# nodejs environment
brew install node
# install some packages
npm install -g bower harp
