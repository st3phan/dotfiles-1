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

# Custom keyboard shortcuts for input fields
# read more at http://www.hcs.harvard.edu/~jrus/site/selectors.html and https://github.com/ttscoff/KeyBindings/blob/master/DefaultKeyBinding.dict
cat << EOF > "${HOME}/Library/KeyBindings/DefaultKeyBinding.dict"
{
  // new paragraph from anywhere (⌘↩)
  "@\U000D" = (moveToEndOfParagraph:, insertNewline:, insertNewline:);
  // new paragraph above (⌘⇧↩)
  "@$\U000D" = (moveToBeginningOfParagraph:, moveLeft:, insertNewline:, moveLeft:, insertNewline:);

  // paste without formatting
  "@v" = (pasteAsPlainText:);

  // select entire line/paragraph
  "^S" = (selectParagraph:);
  // select from beginning of paragraph to last character
  "^s" = (moveToBeginningOfParagraph:, moveToEndOfParagraphAndModifySelection:);
  // select paragraph excluding leading/trailing whitespace (same as ^$@\UF701)
  "^~S" = (moveToEndOfParagraph:, insertText:, " ", selectWord:, moveBackward:, moveToBeginningOfParagraphAndModifySelection:, moveWordForwardAndModifySelection:, moveWordBackwardAndModifySelection:);
  // delete line/paragraph
  "^d" = (selectParagraph:, delete:, insertNewline, moveLeft:);
  // copy paragraph
  "^y" = (setMark:, moveToBeginningOfParagraph:, moveToEndOfParagraphAndModifySelection:, copy:, swapWithMark:);
  // cut paragraph
  "^x" = (moveToBeginningOfParagraph:, moveToEndOfParagraphAndModifySelection:, cut:);
  // paste paragraph below
  "^p" = (moveToEndOfParagraph:,moveRight:,insertNewline:,moveLeft:, paste:);
  // paste paragraph above
  "^P" = (moveToBeginningOfParagraph:, moveLeft:, paste:);

  // set mark
  "^m" = (setMark:);
  // jump to mark
  "^'" = (swapWithMark:, centerSelectionInVisibleArea:);

  // titlecase word
  "~t" = (capitalizeWord:, moveWordForward:, moveWordBackward:);
}
EOF
