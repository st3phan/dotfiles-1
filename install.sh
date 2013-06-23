#!/bin/bash

open "http://developer.apple.com/downloads"
read -p "Homebrew needs Xcode's CLI tools. Download and install them and press return to continue"

git clone https://github.com/vitorgalvao/dotfiles.git /tmp/dotfiles/

cat /tmp/dotfiles/scripts/osx.sh | sh
cat /tmp/dotfiles/scripts/homebrew.sh | sh
cat /tmp/dotfiles/scripts/zsh.sh | sh
cat /tmp/dotfiles/scripts/vim.sh | sh
cat /tmp/dotfiles/scripts/other_installs.sh | sh
cat /tmp/dotfiles/scripts/app_specific_configs.sh | sh

mv "/tmp/dotfiles/manual/" "${HOME}/Desktop/"
