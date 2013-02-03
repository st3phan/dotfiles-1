#!/bin/bash
# make default shell
sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
chsh -s /usr/local/bin/zsh

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# intall zsh-syntax-highlighting
mkdir -p ${HOME}/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# make 'oneend' theme
curl -L https://github.com/vitorgalvao/dotfiles/raw/master/dotfiles/files/extras/oneend.zsh-theme > ${HOME}/.oh-my-zsh/themes/oneend.zsh-theme

# dotfiles
mv "/tmp/dotfiles/files/.zshrc" "${HOME}/"
mv "/tmp/dotfiles/files/.zsh-alias" "${HOME}/"