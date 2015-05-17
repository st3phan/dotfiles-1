# Custom keyboard shortcuts for apps
# @ is ⌘; ~ is ⌥; $ is ⇧; ^ is ⌃
# read more at https://web.archive.org/web/20140810142907/http://hints.macworld.com/article.php?story=20131123074223584

# Global
# defaults write -g NSUserKeyEquivalents '{}'

defaults write com.metaclassy.byword NSUserKeyEquivalents '{
  "Enter Full Screen"="@^f";
  "Exit Full Screen"="@^f";
}'

# Tweetbot
defaults write com.tapbots.TweetbotMac NSUserKeyEquivalents '{
  "Open Links"="l";
  "Send to Pinboard"="$l";
}'
