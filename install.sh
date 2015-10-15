get_everything() {
  git clone https://github.com/vitorgalvao/dotfiles.git /tmp/dotfiles/

  # move files that'll need manual action
  mv "/tmp/dotfiles/files/" "${HOME}/Desktop/"

  # concatenate all shell scripts together, so things like variables can be reused
  cat /tmp/dotfiles/scripts/*.sh > /tmp/script
  bash /tmp/script

  # run ruby scripts
  ruby /tmp/dotfiles/scripts/07_chrome_extensions.rb
}

get_everything 2> "${HOME}/install_errors.log"
