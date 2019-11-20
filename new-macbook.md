# basic setup
* caps to esc: syspref > keyboard > modifier keys
* double click drag: syspref > accessibility > mouse and trackpad > trackpad options
* turn off system sounds: syspref > sounds > sound effects > "Play user interface sound effects"
* swap screencap save/clipboard commands: syspref > shortcuts > screenshots
* dock to left, autohide
* key accents off (hold down to repeat!!!): terminal: `defaults write -g ApplePressAndHoldEnabled -bool false`
* faster key repeat: https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x
  * `defaults write -g InitialKeyRepeat -int 10`
    * # normal minimum is 15 (225 ms)
  * `defaults write -g KeyRepeat -int 1`
    * # normal minimum is 2 (30 ms)
* clock seconds/date: click clock > open date and time preferences

# install
* iterm https://www.iterm2.com/downloads.html
  * terminal _doesn't show all search results highlighted_ (among other reasons)

# misc
* sync shared calendars to ical: https://calendar.google.com/calendar/syncselect, https://www.howtogeek.com/409359/how-to-subscribe-to-calendars-on-mac/
