# settings 

## Core
* Exclude VCS Ignored Paths
  * uncheck; leaving checked excludes gitignore'd files from fuzzy finder

## <> Editor
* Scroll Past End
* Soft Wrap

# packages
* custom-title
  * `<%= projectName %>: <%= fileName %><% if (filePath) { %> ~ ~ <%= relativeFilePath %><% } %> <% if (gitHead) { %> ~ ~ ~ Branch: <%= gitHead %><% } %>`
* language-markdown
  * auto-bulleting, etc
* simple-copy-path
  * file path copying
* tabs-closer

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
