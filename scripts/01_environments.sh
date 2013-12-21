# PATH
export PATH="/usr/local/bin:$PATH"

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

# python environment
brew install python
# install some eggs (docutils will be needed for mpv)
pip install asciinema docutils

# ruby environment
brew install ruby
echo "gem: -n/usr/local/bin" >> ~/.gemrc
# install some gems
gem install bundler watir-webdriver chromedriver2-helper

# nodejs environment
brew install node
# install some packages
npm install -g browser-sync bower grunt-cli harp imageoptim-cli