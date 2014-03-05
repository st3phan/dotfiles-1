# PATH
export PATH="/usr/local/bin:$PATH"

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

# python environment
brew install python
# install some eggs (docutils will be needed for mpv)
pip install asciinema docutils livestreamer

# ruby environment
brew install chruby ruby-install
ruby-install ruby
# use the version installed now, to install some packages
source /usr/local/share/chruby/chruby.sh
chruby ruby
# install some gems
gem install bundler chromedriver2-helper redcarpet site_validator watir-webdriver

# nodejs environment
brew install node
# install some packages
npm install --global browser-sync bower grunt-cli harp html2jade imageoptim-cli pageres tldr
