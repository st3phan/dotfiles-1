# configure git
echo -e "[user]\n\tname = ${name}\n\temail = ${github_email}" > "${HOME}/.gitconfig"

# configure ghi
ghi config --auth "${github_username}"
