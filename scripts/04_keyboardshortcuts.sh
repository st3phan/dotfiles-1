# Custom keyboard shortcuts
# @ is ⌘; ~ is ⌥; $ is ⇧; ^ is ⌃
# read more at https://web.archive.org/web/20140810142907/http://hints.macworld.com/article.php?story=20131123074223584

# Instacast
defaults write com.vemedio.osx.Instacast NSUserKeyEquivalents '{
  "Mark as Played"="~p";
  "Mark as Unplayed"="~u";
  "Download"="~d";
  "Play Now"="\r";
}'

# Pixelmator
defaults write com.pixelmatorteam.pixelmator NSUserKeyEquivalents '{
  "Export…"="@e";
}'

defaults write com.tapbots.TweetbotMac NSUserKeyEquivalents '{
  "Open Links"="l";
  "Send to Pinboard"="$l";
}'
