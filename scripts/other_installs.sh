#!/bin/bash

##############################
### cputhrottle            ###
##############################
curl 'http://www.willnolan.com/cputhrottle/cputhrottle.gz' | gunzip > /usr/local/bin/cputhrottle
chmod +x /usr/local/bin/cputhrottle

##############################
### SublimeTex2 CLI        ###
##############################
ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/usr/local/bin/subl
