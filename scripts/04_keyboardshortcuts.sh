# Custom keyboard shortcuts
# @ is ⌘; ~ is ⌥; $ is ⇧; ^ is ⌃
# read more at https://web.archive.org/web/20140810142907/http://hints.macworld.com/article.php?story=20131123074223584

# Global
defaults write -g NSUserKeyEquivalents '{
  "Paste and Match Style"="@v";
  "Paste"="@~$v";
}'

# Tweetbot
defaults write com.tapbots.TweetbotMac NSUserKeyEquivalents '{
  "Open Links"="l";
  "Send to Pinboard"="$l";
}'
