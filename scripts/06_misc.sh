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

# Source Code Pro (font)
curl -L "http://sourceforge.net/projects/sourcecodepro.adobe/files/latest/download?source=dlp" -o "/tmp/SourceCodePro.zip"
unzip /tmp/SourceCodePro.zip -d /tmp/
mv /tmp/SourceCodePro_FontsOnly*/OTF/SourceCodePro-Regular.otf /Library/Fonts/

# app preferences (via mackup)
PATH="/usr/local/bin:$PATH"
mackup restore