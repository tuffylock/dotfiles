# extensions
* clear downloads bar (always search for newest/most popular. often breaks/etc)
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
  

# search engines
chrome://settings/searchEngines
* unfocus omnibar
  * x
  * `javascript:`
* google images
  * i
  * `http://images.google.com/images?hl=en&source=hp&q=%s&btnG=Search+Images&gbv=2`
  
  
# vimium maps
```
map gp togglePinTab
map l visitPreviousTab
```


# most recently used tab
* win only? https://fwextensions.github.io/QuicKey/ctrl-tab/ (js solution works on mac!)
* 
