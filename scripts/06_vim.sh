# dotfile
mv "/tmp/dotfiles/files/vimrc" "${HOME}/.vimrc"

# download and configure neobundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim +NeoBundleInstall +qall
