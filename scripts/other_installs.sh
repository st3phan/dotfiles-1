#!/bin/bash

##############################
### my personal scripts    ###
##############################
git clone https://github.com/vitorgalvao/tiny-scripts.git /tmp/tiny-scripts/
rm /tmp/tiny-scripts/README.md
chmod +x /tmp/tiny-scripts/*
mv /tmp/tiny-scripts/ /usr/local/bin/

##############################
### SublimeTex2            ###
##############################
# Call from CLI
ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' /usr/local/bin/subl
# Install personal preferences
mv "/tmp/dotfiles/files/Preferences.sublime-settings" "${HOME}/Library/Application Support/Sublime Text 2/Packages/User/"
