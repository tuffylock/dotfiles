# settings
_stored in `.atom/config.cson`, accessible via filebar>Atom>Config..._
_[more info](https://flight-manual.atom.io/using-atom/sections/basic-customization/#:~:text=Global%20Configuration%20Settings&text=cson%20file%20in%20your%20~%2F,atom&text=directory.,-'*'%3A%20'core'&text=The%20configuration%20is%20grouped%20into,under%20scope%20named%20keys%20like%20.)_

## Core
* Audio Beep
* Exclude VCS Ignored Paths
  * uncheck; leaving checked excludes gitignore'd files from fuzzy finder
* Ignored Names
  * `.git, .hg, .svn, .DS_Store, ._*, Thumbs.db, desktop.ini, publicassets, tmp, log, coverage, node_modules, path`
    * `path` - wrapbook challenge had a path folder for ruby 2.7.3 with every gem readme and it was clogging navigation

## <> Editor
* Scroll Past End
* Show Indent Guide
* Show Invisibles
* Soft Wrap
  * Soft Wrap Hanging Indent: 4

# packages
* atom-ide-ui (built in) (no longer built in ??)
  * switch "Trigger keys for macOS" to fix cmd-click for multiple cursors (under "Hyperclick")
* autocomplete-plus (built in)
  * Keymap For Confirming A Suggestion: tab always, enter when explicitly selected
* custom-title
  * `<%= projectName %>: <%= fileName %><% if (filePath) { %> ~ ~ <%= relativeFilePath %><% } %> <% if (gitHead) { %> ~ ~ ~ Branch: <%= gitHead %><% } %>`
* simple-copy-path
  * file path copying
* tabs-closer (behavior has p much been added natively   ?)
* better-git-blame (auditing...otherwise, git-blame) (gutter blames w ctl-b) (just switch back to git-blame ?)
* gemsource (unpack ruby gems) (or use bundle open gemname) https://atom.io/packages/gemsource
* goto-definition (cmd-opt-enter or right click to search def ___ ) https://atom.io/packages/goto-definition
* markdown
  * [language-markdown](https://atom.io/packages/language-markdown) (vs https://atom.io/packages/markdown-writer ?)
  * auto-bulleting, etc
  * [markdown-image-paste](https://atom.io/packages/markdown-image-paste)
    * pasteable images!!
  * [markdown-preview](https://atom.io/packages/markdown-preview) comes installed by default (check out [mark-down-preview-enhanced](https://shd101wyy.github.io/markdown-preview-enhanced/#/) ?)
    * [markdown-scroll-sync](https://atom.io/packages/markdown-scroll-sync)
    * syncs preview display with editor
* to investigate
  * https://robertnyman.com/2014/11/04/hyperlink-helper-package-for-the-atom-editor/
    * highlight text, activate to turn into href using clipboard content
  * https://emmet.io/download/
    * code snippets (frontend focus?)
  * https://atom.io/packages/highlight-selected
    * highlight other instances of selected word
  * https://atom.io/packages/advanced-open-file
  * https://atom.io/packages/pigments
  * https://atom.io/packages/color-picker
  * https://atom.io/packages/minimap
  * https://atom.io/packages/hyperclick
    * couldn't get opt-click to work (can just right click anyway)

# themes
* solarized dark

# keymap overrides
`/Users/fosborn/.atom/keymap.cson`
* cmd-p (instead of cmd-shift-p) for command-palette
```
'.platform-darwin, .platform-darwin .command-palette atom-text-editor':
  'cmd-p': 'command-palette:toggle'
```
* navigate pane focus
```
'body':
  'ctrl-cmd-]': 'window:focus-pane-on-right'
  'ctrl-cmd-[': 'window:focus-pane-on-left'
```


# shortcut reference
* focus tree view
  * ctl-0
* while tree view focused
  * new file
    * a
  * new folder
    * A
* reveal in tree view
  * cmd-|
    * (pipe),,, (shift-\)
* switch pane focus
  * cmd-k -> cmd-n (for next; or, cmd-arrowkey)
* search symbols/definitions
  * cmd-r
    * search symbols in file
* hightlight _all_ instances (global cmd-d)
  * cmd-ctl-g
* function folding https://flight-manual.atom.io/using-atom/sections/folding/#:~:text=
  * cmd-shift-opt-[
    * fold all
  * cmd-shift-opt-]
    * unfold all
* markdown preview
  * ctl-shift-m


# misc
* save individual files without trailing newline
  * select a placeholder language (one you dont use, easy to select, ie `C`)
  * in its language package cson file (https://github.com/atom/language-c/blob/master/grammars/c.cson) locate its "scopeName". you will prepend a `.`
  * in atom's `config.cson` file:
```
'.source.c':
  whitespace:
    ensureSingleTrailingNewline: false
```
