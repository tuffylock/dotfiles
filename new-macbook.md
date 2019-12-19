# basic setup
* caps to esc: syspref > keyboard > modifier keys
* double click drag: syspref > accessibility > mouse and trackpad > trackpad options
* turn off system sounds: syspref > sounds > sound effects > "Play user interface sound effects"
* dont close windows when quitting an app: syspref > general > uncheck "Close windows when quitting an app" (particularly impacts iterm)
* swap screencap save/clipboard commands: syspref > shortcuts > screenshots
* set screenshot folder
  * create folder
  * terminal:
  * defaults write com.apple.screencapture location /Users/featherosborn/Documents/Screenshots
    * (drag and drop folder to autofill location!)
* dock to left, autohide
* key accents off (hold down to repeat!!!): terminal: `defaults write -g ApplePressAndHoldEnabled -bool false`
* faster key repeat (not working???): https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x
  * `defaults write -g InitialKeyRepeat -int 10`
    * normal minimum is 15 (225 ms)
  * `defaults write -g KeyRepeat -int 1`
    * normal minimum is 2 (30 ms)
* clock seconds/date: click clock > open date and time preferences
* always show finder hidden files: terminal: `defaults write com.apple.finder AppleShowAllFiles YES`
  * Hold the ‘Option/alt’ key, then right click on the Finder icon in the dock and click Relaunch.

# install
* iterm https://www.iterm2.com/downloads.html
  * terminal _doesn't show all search results highlighted_ (among other reasons)
* muzzle https://muzzleapp.com/
  * mutes notifications while screensharing

# misc
* sync shared calendars to ical: https://calendar.google.com/calendar/syncselect, https://www.howtogeek.com/409359/how-to-subscribe-to-calendars-on-mac/
* use tab to navigate spotlight results?
  * relies on karabiner: https://superuser.com/a/888609
  
# shortcuts
* opt-click to maximize window without fullscreen
* cmd-click to rearrange menu bar icons
* hold opt when letting go of cmd after cmd-tab to de-minimize all windows for that app

  
# touchbar
* syspref > keyboard > keyboard
* Touch Bar shows: Expanded Control Strip
* Customize Touch Bar...
  * brightness
  * brightness slider
  * mission control
  * desktop
  * screenshot
  * volume set
  * volume slider
  * media controls
  * lock screen
* some apps have toolbar customization; check View > Customize Touch Bar...
* in depth customization via BetterTouchTool (now playing, finder search, notetaking) https://vas3k.com/blog/touchbar/
* BetterTouchTool https://folivora.ai/


# applescript ?
* https://medium.com/@danielsneijers/automating-mundane-tasks-with-applescript-and-spotlight-abb892b2dc42
