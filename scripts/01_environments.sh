# PATH
export PATH="/usr/local/bin:$PATH"

# make sure system is up-to-date
softwareupdate --install --all

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# python environment
brew install pyenv
python2=$(pyenv install --list | tr -d ' ' | grep '^2' | grep --invert-match 'dev\|a' | tail -1)
python_latest=$(pyenv install --list | tr -d ' ' | grep '^\d' | grep --invert-match 'dev\|a' | tail -1)
pyenv install "${python2}"
pyenv install "${python_latest}"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
pyenv global "${python_latest}"
# install some eggs
pip install livestreamer subliminal

# ruby environment
brew install chruby ruby-install
latest_ruby=$(curl --silent 'https://raw.githubusercontent.com/postmodern/ruby-versions/master/ruby/stable.txt' | tail -1)
ruby-install --cleanup ruby "${latest_ruby}"
# ruby-install --cleanup ruby # when https://github.com/postmodern/ruby-install/issues/175 is done, this line should replace the previous two
source '/usr/local/share/chruby/chruby.sh'
chruby ruby
# install some gems
gem install --no-ri --no-rdoc bundler chromedriver2-helper maid pry redcarpet ronn rubocop seeing_is_believing site_validator video_transcoding watir-webdriver

# node environment
brew install nvm
export NVM_DIR="${HOME}/.nvm"
source "$(brew --prefix nvm)/nvm.sh"
nvm install node
nvm alias default node
# install some packages
npm install --global csslint divshot-cli electron-prebuilt eslint gitignore html2jade jsonlint markdown-live nightmare pageres-cli ttystudio watch
