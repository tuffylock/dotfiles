# settings 

## Core
* Audio Beep
* Exclude VCS Ignored Paths
  * uncheck; leaving checked excludes gitignore'd files from fuzzy finder
* Ignored Names
  * `.git, .hg, .svn, .DS_Store, ._*, Thumbs.db, desktop.ini, publicassets, tmp, log, coverage, node_modules`

## <> Editor
* Scroll Past End
* Soft Wrap
* Show Indent Guide
* Show Invisibles

# packages
* atom-ide-ui (built in)
  * switch "Trigger keys for macOS" to fix cmd-click for multiple cursors (under "Hyperclick")
* autocomplete-plus (built in)
  * Keymap For Confirming A Suggestion: tab always, enter when explicitly selected
* custom-title
  * `<%= projectName %>: <%= fileName %><% if (filePath) { %> ~ ~ <%= relativeFilePath %><% } %> <% if (gitHead) { %> ~ ~ ~ Branch: <%= gitHead %><% } %>`
* language-markdown
  * auto-bulleting, etc
* simple-copy-path
  * file path copying
* tabs-closer (behavior has p much been added natively   ?)
* better-git-blame (auditing...otherwise, git-blame) (gutter blames w ctl-b)
* gemsource (unpack ruby gems) (or use bundle open gemname) https://atom.io/packages/gemsource
* goto-definition (cmd-opt-enter or right click to search def ___ ) https://atom.io/packages/goto-definition

# themes
* solarized dark

# keymap overrides
`/Users/fosborn/.atom/keymap.cson`
* cmd-p (instead of cmd-shift-p) for command-palette
```
'.platform-darwin, .platform-darwin .command-palette atom-text-editor':
  'cmd-p': 'command-palette:toggle'
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
* search symbols/definitions
  * cmd-r
    * search symbols in file
* function folding https://flight-manual.atom.io/using-atom/sections/folding/#:~:text=
  * cmd-shift-opt-[
    * fold all
  * cmd-shift-opt-]
    * unfold all
    
    
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
