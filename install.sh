#!/bin/bash

git clone https://github.com/vitorgalvao/dotfiles.git /tmp/dotfiles/

cat /tmp/dotfiles/osx.sh | sh
cat /tmp/dotfiles/homebrew.sh | sh
cat /tmp/dotfiles/zsh.sh | sh
cat /tmp/dotfiles/vim.sh | sh
cat /tmp/dotfiles/other_installs.sh | sh
cat /tmp/dotfiles/app_specific_configs.sh | sh

mv /tmp/dotfiles/manual/ ${HOME}/Desktop/