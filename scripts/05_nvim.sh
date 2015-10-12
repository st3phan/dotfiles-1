# dotfile
mv "/tmp/dotfiles/files/nvimrc" "${HOME}/.nvimrc"

# download and configure vim-plug
mkdir -p ~/.nvim/autoload
curl -fLo ~/.nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
