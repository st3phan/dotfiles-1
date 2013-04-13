#!/bin/bash

#############################
### Mplayerx              ###
#############################
# Time in seconds to navigate when pressing left/right arrows
defaults write org.niltsh.MPlayerX SeekStepTimeL -float -3
defaults write org.niltsh.MPlayerX SeekStepTimeR -float +3

# Menu key in Apple Remote toggles elapse/remaining time
defaults write org.niltsh.MPlayerX ARMenuKeyTogTimeDisp -bool true

# Show current time when paused
defaults write org.niltsh.MPlayerX PauseShowTime -bool true

#############################
### iTerm2                ###
#############################
mv "/tmp/dotfiles/files/iTerm2.plist" "${HOME}/Library/Preferences/com.googlecode.iterm2.plist"
