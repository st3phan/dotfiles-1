#!/bin/bash

##############################
### my personal scripts    ###
##############################
git clone "https://github.com/vitorgalvao/tiny-scripts.git" "/tmp/tiny-scripts/"
rm "/tmp/tiny-scripts/README.md"
chmod +x "/tmp/tiny-scripts/*"
mv "/tmp/tiny-scripts/" "/usr/local/bin/"

##############################
### Source Code Pro (font) ###
##############################
curl -L "http://sourceforge.net/projects/sourcecodepro.adobe/files/latest/download?source=dlp" -o "/tmp/SourceCodePro.zip"
unzip /tmp/SourceCodePro.zip -d /tmp/
mv "/tmp/SourceCodePro_FontsOnly*/OTF/SourceCodePro-Regular.otf" "/Library/Fonts/"
