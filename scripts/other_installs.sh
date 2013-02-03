#!/bin/bash

##############################
### cputhrottle            ###
##############################
curl 'http://www.willnolan.com/cputhrottle/cputhrottle.gz' | gunzip > /usr/local/bin/cputhrottle
chmod +x /usr/local/bin/cputhrottle

##############################
### SublimeTex2            ###
##############################
# Call from CLI
ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/usr/local/bin/subl

# Install personal preferences
mv "/tmp/dotfiles/files/Preferences.sublime-settings" "${HOME}/Library/Application Support/Sublime Text 2/Packages/User/"