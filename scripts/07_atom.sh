# packages
apm install atom-alignment color-picker dash esformatter git-plus highlight-line language-jade linter linter-csslint linter-eslint linter-jsonlint linter-rubocop linter-shellcheck merge-conflicts pigments seeing-is-believing vim-mode vim-surround

# themes and syntaxes
apm install peacock-syntax seti-ui

# set the correct PATH in atom
atom_init="${HOME}/.atom/init.coffee"
mkdir -p "${HOME}/.atom"
curl --silent --output "${atom_init}" 'https://raw.githubusercontent.com/atom/atom/master/dot-atom/init.coffee' # get the default init.coffee
echo '\n#set PATH' >> "${atom_init}" # add comment we will use to grab on, every subsequent time we want to update PATH
sed -i '' "s|.*# set PATH|process.env.PATH = '$PATH' # set PATH|" "${atom_init}" # update PATH in atom
