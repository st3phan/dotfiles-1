# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load (in ~/.oh-my-zsh/themes/)
ZSH_THEME="oneend"

# Plugins to load (in ~/.oh-my-zsh/plugins/*)
plugins=(zsh-syntax-highlighting)

# Source other files
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh-alias

# Set colors
LSCOLORS=hxfxcxdxbxegedabagacad

# Other settings
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR="subl"