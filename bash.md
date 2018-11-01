# bashrc

```

```

# bash_profile

```

```


git branch autocomplete (with g alias)

```
# To Setup:
# 1) Save the .git-completion.bash file found here:
#    https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# `curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash`
# 2) Add the following lines to your .bash_profile, be sure to reload (for example: source ~/.bash_profile) for the changes to take effect:

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

  # Add git completion to aliases
  __git_complete g __git_main
  __git_complete gc _git_checkout
  __git_complete gm __git_merge
  __git_complete gp _git_pull
fi

# Make sure you actually have those aliases defined, of course.
alias g="git"
alias gc="git checkout"
alias gm="git merge"
alias gp="git pull"
```
