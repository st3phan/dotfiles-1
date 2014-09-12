#!/bin/bash

git clone https://github.com/vitorgalvao/dotfiles.git /tmp/dotfiles/

# concatenate all shell scripts together, so things like variables can be reused
cat /tmp/dotfiles/scripts/*.sh > /tmp/script
bash /tmp/script

# run ruby scripts
ruby /tmp/dotfiles/scripts/chrome_extensions.rb

# move files that'll need manual action
mv "/tmp/dotfiles/files/" "${HOME}/Desktop/"
