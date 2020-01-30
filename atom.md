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
* gemsource (unpack ruby gems) https://atom.io/packages/gemsource

# themes

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
