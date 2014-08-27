#!/bin/bash

git clone https://github.com/vitorgalvao/dotfiles.git /tmp/dotfiles/

# concatenate all parts together, so things like variables can be reused
cat /tmp/dotfiles/scripts/* > /tmp/script
bash /tmp/script

mv "/tmp/dotfiles/files/" "${HOME}/Desktop/"

echo 'After dropbox finishes syncing, run `mackup restore` to get your backed up settings'
