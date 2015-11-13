run_install_dotfiles() {
  curl --progress-bar --location 'https://github.com/vitorgalvao/dotfiles/archive/master.zip' | ditto -xk - '/tmp'

  # source all shell scripts
  for shell_script in '/tmp/dotfiles-master/scripts/'*.sh; do
    source "${shell_script}"
  done

  clear

  initial_setup
  ask_details
  install_xcode
  update_system

  install_brew
  install_python
  install_ruby
  install_node

  install_brew_apps
  install_brew_head_apps
  make_caskroom
  install_cask_apps
  install_tinyscripts

  restore_settings
  set_default_apps
  set_keyboard_shortcuts
  configure_zsh
  install_zsh_plugins
  install_nvim_packages
  install_atom_packages
  configure_git
  install_launchagents

  cleanup_brew
  cleanup_error_log
  move_manual_action_files
  killall caffeinate # computer can go back to sleep
  final_message
}

# run and log errors to file (but still show them when they happen)
error_log="${HOME}/Desktop/install_errors.log"
run_install_dotfiles 2> >(tee "${error_log}")
