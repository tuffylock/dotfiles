# basic setup

## System Preferences
* **Trackpad**
  * **Point & Click**
    * check **Tap to click**
    * check **Secondary click** (Click or tap with two fingers)
    * set **Tracking speed** to **Fast**
    * uncheck **Look up & data detectors**
    * uncheck **Force Click and haptic feedback**
    * (when magic trackpad connected): check **Silent clicking**
  * **Scroll & Zoom**
    * All features on
  * **More Gestures**
    * All features on
    * switch from four fingers to three fingers:
      * **Swipe between full-screen apps**
      * **Mission Control**
      * **App Expose**
* **Accessibility**
  * **Pointer Control** > **Trackpad Options...**
    * check **Enable dragging** (with drag lock)
      * (double click to drag, click again to "drop")
    * set **Double-click speed** slower
* **Sounds**
  * **Sound Effects**
    * set **Alert volume** to 0
    * uncheck **Play sound on startup**
    * uncheck **Play user interface sound effects**
    * set **Show Sound in menu bar** to always
* **Keyboard**
  * **Keyboard**
    * set **Key Repeat** to **Fast**
    * set **Delay Until Repeat** to **Short**
    * uncheck **Adjust keyboard brightness in low light**
    * check **Turn keyboard backlight off after 5 secs of inactivity**
    * **Modifier Keys...**
      * **Caps Lock** to **Escape**
  * **Text**
    * remove "omw" default text replacement
    * uncheck all automatic text corrections
    * uncheck **Use smart quotes and dashes**
    * to activate tab completion for text replacement (eg for emails, where you don't want a space at the end):
      * in a browser, focus a text field
      * Menu Bar > Edit > Substitutions
      * uncheck and recheck **Text Replacement**
  * **Shortcuts**
    * check **Use keyboard navigation to move focus between controls**
    * **Screenshots**
      * swap **Save** and **Copy** screenshot commands
* **Dock & Menu Bar**
  * **Dock & Menu Bar**
    * **Position on screen** to **Left**
    * check **Automatically hide and show the Dock**
  * **Bluetooth**
    * check **Show in Menu Bar**
  * **Battery**
    * check **Show Percentage**
  * **Clock**
    * check **Display the time with seconds**
* **General**
  * uncheck **Close windows when quitting an app**
    * (particularly impacts iterm)
* **Battery**
  * **Power Adapter**
    * set **Turn display off after** to **Never**
* **Desktop & Screen Saver**
  * **Screen Saver**
    * uncheck **Show screen saver after...**
    * **Hot Corners...**
      * set bottom left to **Put Display to Sleep**
* **Security & Privacy**
  * **General**
    * set **Require password...after sleep or screen saver begins** to **5 seconds**
* **Mission Control**
  * uncheck **Automatically rearrange Spaces based on most recent use**
* **Users & Groups**
  * **Login Items**
    * set startup apps

## Menu Bar
* **Control Center**
  * **Keyboard Brightness** to 0

## Terminal
* turn key accents off (so hold down to repeat works)
  * `defaults write -g ApplePressAndHoldEnabled -bool false`
* always show finder hidden files (cmd-shift-. in finder to toggle temporarily)
  * `defaults write com.apple.finder AppleShowAllFiles YES`
  * hold option/alt then right click on the Finder icon in the dock and click Relaunch
* set screenshot folder
  * create folder
  * `defaults write com.apple.screencapture location /Users/username/Documents/Screenshots`
    * (drag and drop folder to autofill location!)
  * (this can also be set via the cmd-shift-5 menu?)





# install
* brave https://brave.com/
  * set as default browser: syspref -> general -> Default web browser
* iterm https://www.iterm2.com/downloads.html
  * terminal _doesn't show all search results highlighted_ (among other reasons)
* postman https://www.postman.com/downloads/
  * apple > about this mac > processor to check intel vs apple cpu
  * google account
  * set default language via settings>general>request>language detection
* muzzle https://muzzleapp.com/
  * mutes notifications while screensharing
* zoom
* slack

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
* show all filename extensions
* view
  * show path
  * show status bar
* pin user, code, pictures


# applescript ?
* https://medium.com/@danielsneijers/automating-mundane-tasks-with-applescript-and-spotlight-abb892b2dc42


# mac stuff to remember
* cmd-' to open settings
* spacebar to preview images in finder
* cmd/opt arrow to navigate text by line or word
* cmd-, to open preferences (in most apps)


set login screen background
https://macreports.com/how-to-change-the-login-screen-background-in-macos-big-sur/


## archive notes

* turn off charger plugged in sound: https://apple.stackexchange.com/questions/282752/turning-power-chime-off
  * terminal:
  * defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
  * killall PowerChime

* paste without style by default (this breaks image pasting):
  * syspref > keyboard > shortcuts > app shortcuts > + >
  * Set the application/s. From the Application drop-down menu, choose All Applications (or you can specify and individual application, like Mail, if you prefer).
  * In the Menu Title field, enter “Paste and Match Style”. Enter it exactly as is. It’s not asking you make up a name–it’s asking you for the exact name of the existing menu command.
  * In the Keyboard Shortcut field, press Command + V (or whatever shortcut you want to use). That will capture the new shortcut. Command + V will override the regular paste command. You can also specify a different keyboard shortcut if you’d like to have the option of both.
  * Add
  * https://havecamerawilltravel.com/photographer/set-paste-match-style-default-mac-osx/

* faster key repeat (not working???): https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x
  * `defaults write -g InitialKeyRepeat -int 10`
    * normal minimum is 15 (225 ms)
  * `defaults write -g KeyRepeat -int 1`
    * normal minimum is 2 (30 ms)

* bypass open link in app via chrome confirmation dialog (zoom links)
  * `defaults write http://com.google.Chrome ExternalProtocolDialogShowAlwaysOpenCheckbox -bool true`
