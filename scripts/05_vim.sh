# dotfile
mv "/tmp/dotfiles/files/vimrc" "${HOME}/.vimrc"

# download and configure vim-plug
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
