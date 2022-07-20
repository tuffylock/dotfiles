# [brave](https://brave.com/download/)

## brave settings
brave://settings
* **Get Started**
  * set **On startup** to **Continue where you left off**
* **Brave Rewards**
  * turn on, then turn all settings off, relaunch brave (to remove tip icons, etc)
* **Appearance**
  * disable **Show Brave Rewards icon in address bar**
  * enable **Always Show Full URLs**
  * enable **Cycle through the most recently used tabs with Ctrl-Tab**
    * (nevermind for now. overrides cmd-shift-[ / cmd-shift-])
  * enable **Show warning before quitting with cmd-Q**
* **Privacy & Security**
  * enable **Autocomplete searches and URLs**
* **Extensions**
  * enable **Media Router**
    * (for chromecast)
  * enable **Widevine**


# extensions
* [vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
```
map gp togglePinTab
map l visitPreviousTab
map < moveTabLeft
map > moveTabRight
map [ previousTab
map ] nextTab
```
* [AutoHideDownloadsBar](https://chrome.google.com/webstore/detail/autohidedownloadsbar/gkmndgjgpolmikgnipipfekglbbgjcel)
  * (periodically check for new apps that do this)
* [CLUD: Cycle Last Used Tabs](https://chrome.google.com/webstore/detail/clut-cycle-last-used-tabs/cobieddmkhhnbeldhncnfcgcaccmehgn?hl=en)
  * Opt-W
    * quick switch/back and forth
  * Opt-S / Opt-Shift-S
    * slow switch (keeps going through history back/forward even if you let the command go)
* [Atlas](https://chrome.google.com/webstore/detail/atlas/hdipbljnjaoiknbnmhhdiepmjioafgmp)
  * (better new tab page)

# search engines
* brave://settings/searchEngines
* chrome://settings/searchEngines
* unfocus omnibar
  * x
  * `javascript:`
* google images
  * i
  * `http://images.google.com/images?hl=en&source=hp&q=%s&btnG=Search+Images&gbv=2`
* github commit for...
  * com
  * `https://github.com/ORG/REPO/commit/%s`

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



## shortcuts
* cmd-shift-a
  * search open tabs
* cmd (ctl) click to select multiple tabs (eg for moving to new window)



## most recently used tab
* win only? https://fwextensions.github.io/QuicKey/ctrl-tab/ (js solution works on mac!)
* might be magic? https://chrome.google.com/webstore/detail/recent-tabs/ocllfmhjhfmogablefmibmjcodggknml
  * "On Mac OS, the Recent Tabs extension is somehow able to reassign Ctrl+Tab to switch between two most recently used tabs out-of-the-box!" (downvoted)


# firefox

* separate sessions / "Multi-Account Containers" for development: https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/
