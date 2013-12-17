# my personal scripts
getScripts() {
	mkdir -p "/tmp/personal-scripts"
	git clone "https://github.com/vitorgalvao/$1.git" "/tmp/personal-scripts/$1"
	rm "/tmp/personal-scripts/$1/README.md"
	chmod +x /tmp/personal-scripts/$1/*
	mv /tmp/personal-scripts/$1/* /usr/local/bin/
}

getScripts tiny-scripts
getScripts tiny-watir-scripts

# app preferences (via mackup)
PATH="/usr/local/bin:$PATH"
mackup restore