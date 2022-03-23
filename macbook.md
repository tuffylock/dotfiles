# basic setup
* tap to click
* double click drag: syspref > accessibility > mouse and trackpad > trackpad options
* caps to esc: syspref > keyboard > modifier keys
* turn off system sounds: syspref > sounds > sound effects > "Play user interface sound effects" (and turn volume all the way down)
  * turn off charger plugged in sound: https://apple.stackexchange.com/questions/282752/turning-power-chime-off
    * terminal:
    * defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
    * killall PowerChime
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
* always show finder hidden files (cmd-shift-. in finder to toggle temporarily):
  * terminal: `defaults write com.apple.finder AppleShowAllFiles YES`
  * Hold the ‘Option/alt’ key, then right click on the Finder icon in the dock and click Relaunch.
* bypass open link in app via chrome confirmation dialog (zoom links)
  * `defaults write http://com.google.Chrome ExternalProtocolDialogShowAlwaysOpenCheckbox -bool true`
* paste without style by default:
  * syspref > keyboard > shortcuts > app shortcuts > + >
  * Set the application/s. From the Application drop-down menu, choose All Applications (or you can specify and individual application, like Mail, if you prefer).
  * In the Menu Title field, enter “Paste and Match Style”. Enter it exactly as is. It’s not asking you make up a name–it’s asking you for the exact name of the existing menu command.
  * In the Keyboard Shortcut field, press Command + V (or whatever shortcut you want to use). That will capture the new shortcut. Command + V will override the regular paste command. You can also specify a different keyboard shortcut if you’d like to have the option of both.
  * Add
  * https://havecamerawilltravel.com/photographer/set-paste-match-style-default-mac-osx/

# install
* brave https://brave.com/
  * set as default browser: syspref -> general -> Default web browser
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
  * "After playing, here are some notes. Contrary to what one could think, the Option trick does not show all windows in the target application. As long as the target app has at least one non-hidden window, the Option trick does nothing. Otherwise, when the target app has one or more hidden window(s), the Option trick shows one, and only one, of these windows. More interesting yet : with apps like the Terminal, or the Activity Monitor, the Option trick will create a new window. In fact, Apple Tab with the Option trick is the equivalent of clicking the target app in the Dock."


# touchbar
* syspref > keyboard > keyboard
* Touch Bar shows: Expanded Control Strip
* Customize Touch Bar...
  * volume slider
  * brightness
  * mission control
  * desktop
  * screenshot
  * volume set
  * media controls
  * brightness slider
  * lock screen
* some apps have toolbar customization; check View > Customize Touch Bar...
* in depth customization via BetterTouchTool (now playing, finder search, notetaking) https://vas3k.com/blog/touchbar/
* BetterTouchTool https://folivora.ai/
* a lil creature.... https://github.com/graceavery/tamagotchiTemp


# finder
* Finder > Preferences > Advanced > Keep folders on top when sorting by name


# applescript ?
* https://medium.com/@danielsneijers/automating-mundane-tasks-with-applescript-and-spotlight-abb892b2dc42


# mac stuff to remember
* cmd-' to open settings
* spacebar to preview images in finder
* cmd/opt arrow to navigate text by word or line
