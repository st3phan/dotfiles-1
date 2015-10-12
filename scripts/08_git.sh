# configure git
echo "[user]\n\tname = ${github_username}\n\temail = ${github_email}" > "${HOME}/.gitconfig"

# configure ghi
/usr/local/bin/ghi config --auth "${github_username}"
