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

# Install some gems
gem install bundler

##############################
### nodejs packages        ###
##############################
npm install -g bower

##############################
### Source Code Pro (font) ###
##############################
curl -L "http://sourceforge.net/projects/sourcecodepro.adobe/files/latest/download?source=dlp" -o "/tmp/SourceCodePro.zip"
unzip /tmp/SourceCodePro.zip -d /tmp/
mv /tmp/SourceCodePro_FontsOnly*/OTF/SourceCodePro-Regular.otf /Library/Fonts/

##############################
### Change MPlayer2 icon   ###
##############################
cd /tmp/
curl 'http://fc04.deviantart.net/fs71/f/2012/237/8/9/mplayerx_replacements_by_manyk-d5499gq.zip' -o mplayerx-icons.zip
unzip mplayerx-icons.zip
mv MPlayerX.icns /Applications/MPlayer2.app/Contents/Resources/icon.icns
mv doc_video.icns /Applications/MPlayer2.app/Contents/Resources/movie.icns
mv doc_audio.icns /Applications/MPlayer2.app/Contents/Resources/audio.icns
mv doc_sub.icns /Applications/MPlayer2.app/Contents/Resources/subtitles.icns
cd -

##############################
### qlImageSize            ###
##############################
cd /tmp/
curl -O "http://repo.whine.fr/qlImageSize.qlgenerator-10.8.zip"
unzip "qlImageSize.qlgenerator-10.8.zip"
mv qlImageSize.qlgenerator ~/Library/QuickLook/
