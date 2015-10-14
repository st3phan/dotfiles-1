# configure git
echo -e "[user]\n\tname = ${name}\n\temail = ${github_email}" > "${HOME}/.gitconfig"

git config --global credential.helper osxkeychain

# configure ghi
ghi config --auth "${github_username}"
