#!/bin/bash

##############################
### my personal scripts    ###
##############################
git clone "https://github.com/vitorgalvao/tiny-scripts.git" "/tmp/tiny-scripts/"
rm "/tmp/tiny-scripts/README.md"
chmod +x "/tmp/tiny-scripts/*"
mv /tmp/tiny-scripts/* /usr/local/bin/

##############################
### ruby versioning        ###
##############################
brew install chruby ruby-install # Install chruby and ruby-install
ruby-install ruby # Install latest ruby

# Make ruby 2.0 the default
echo "ruby-2.0" > "${HOME}/.ruby-version"

# Install some gems
# gem install bundler

##############################
### Source Code Pro (font) ###
##############################
curl -L "http://sourceforge.net/projects/sourcecodepro.adobe/files/latest/download?source=dlp" -o "/tmp/SourceCodePro.zip"
unzip /tmp/SourceCodePro.zip -d /tmp/
mv /tmp/SourceCodePro_FontsOnly*/OTF/SourceCodePro-Regular.otf /Library/Fonts/
