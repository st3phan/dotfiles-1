#!/bin/bash

##############################
### my personal scripts    ###
##############################
getScripts() {
	mkdir -p "/tmp/personal-scripts"
	git clone "https://github.com/vitorgalvao/$1.git" "/tmp/personal-scripts/$1"
	rm "/tmp/personal-scripts/$1/README.md"
	chmod +x /tmp/personal-scripts/$1/*
	mv /tmp/personal-scripts/$1/* /usr/local/bin/
}

getScripts tiny-scripts
getScripts tiny-watir-scripts

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
npm install -g bower harp

##############################
### Source Code Pro (font) ###
##############################
curl -L "http://sourceforge.net/projects/sourcecodepro.adobe/files/latest/download?source=dlp" -o "/tmp/SourceCodePro.zip"
unzip /tmp/SourceCodePro.zip -d /tmp/
mv /tmp/SourceCodePro_FontsOnly*/OTF/SourceCodePro-Regular.otf /Library/Fonts/

##############################
### qlImageSize            ###
##############################
cd /tmp/
curl -O "http://repo.whine.fr/qlImageSize.qlgenerator-10.8.zip"
unzip "qlImageSize.qlgenerator-10.8.zip"
mv qlImageSize.qlgenerator ~/Library/QuickLook/
