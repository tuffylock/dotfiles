# chrome/brave

## backing up
* brave: brave://settings/braveSync/setup
* chrome: https://support.cloudhq.net/how-to-get-chrome-extensions-on-all-your-devices/
* You can copy your profile ?:
  * Users/<username>/Library/Application Support/Brave/
* looks like extensions are a pain
  * https://www.howtogeek.com/137964/how-do-i-copy-an-extension-from-one-chrome-installation-to-another/
  * https://www.addictivetips.com/web/how-to-export-an-installed-extension-chrome/
  * https://www.alphr.com/export-chrome-extensions/
  * https://notesread.com/how-to-import-and-export-google-chrome-extensions/

## settings
* reopen session after quitting: Settings > "On Startup" > "Continue where you left off"
  * chrome://settings/onStartup
* turn off search terms in omnibar showing before sites visited:
  * Load chrome://flags/#omnibox-drive-suggestions in the Chrome address bar.
  * Change the experimental flag to disabled by activating the menu next to the preference and selecting "Disabled" from the options.
  * Restart the Chrome browser.

## extensions
* clear downloads bar (always search for newest/most popular. often breaks/etc)
* open link in new tab: https://chrome.google.com/webstore/detail/open-link-in-same-tab/kgpefningcojblgciiljmabggbbjiojb?hl=en
* vimium: https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
* quickkey (tab navigation): https://chrome.google.com/webstore/detail/quickey-%E2%80%93-the-quick-tab-s/ldlghkoiihaelfnggonhjnfiabmaficg
  * ctl-tab for mru:
  * opt 1 https://fwextensions.github.io/QuicKey/ctrl-tab/
  * chrome://extensions/shortcuts
  * in console:
  ```
  chrome.developerPrivate.updateExtensionCommand({
    extensionId: "ldlghkoiihaelfnggonhjnfiabmaficg",
    commandName: "30-toggle-recent-tabs",
    keybinding: "Ctrl+Tab"
  });
  ```
* format json: https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh


## search engines
chrome://settings/searchEngines
* unfocus omnibar
  * x
  * `javascript:`
* google images
  * i
  * `http://images.google.com/images?hl=en&source=hp&q=%s&btnG=Search+Images&gbv=2`
* github commit for...
  * com
  * `https://github.com/ORG/REPO/commit/%s`


## shortcuts
* cmd-shift-a
  * search open tabs
* cmd (ctl) click to select multiple tabs (eg for moving to new window)


## vimium maps
```
map gp togglePinTab
map l visitPreviousTab
map < moveTabLeft
map > moveTabRight
map [ previousTab
map ] nextTab
```


## most recently used tab
* win only? https://fwextensions.github.io/QuicKey/ctrl-tab/ (js solution works on mac!)
* might be magic? https://chrome.google.com/webstore/detail/recent-tabs/ocllfmhjhfmogablefmibmjcodggknml
  * "On Mac OS, the Recent Tabs extension is somehow able to reassign Ctrl+Tab to switch between two most recently used tabs out-of-the-box!" (downvoted)


# firefox

* separate sessions / "Multi-Account Containers" for development: https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/

# brave
* https://bravefaq.com/categories/tipping-auto-contribute/page/how-to-turn-on-or-off-the-inline-tip-buttons
  * brave://rewards/
  * turn on BAT reward etc
  * scroll down to tip settings, uncheck, relaunch
