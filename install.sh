#!/bin/bash

open "http://developer.apple.com/downloads"
read -p "Homebrew needs Xcode's CLI tools. Download and install them and press RETURN to continue"

git clone https://github.com/vitorgalvao/dotfiles.git /tmp/dotfiles/

# concatenate all parts together, so things like variables can be reused
cat /tmp/dotfiles/scripts/* | sh

mv "/tmp/dotfiles/files/" "${HOME}/Desktop/"