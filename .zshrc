# touch ~/.zshrc

eval "$(rbenv init - zsh)"


# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
. /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

setopt PROMPT_SUBST

# wip conversion of bash prompt
# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
# can't get colors to work...original colors but introduces spacing issues.
# export PS1='\W$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$ '

# working directory, git status
# PROMPT='%~$(__git_ps1 "(%s)")%# '

# no working directory (see iterm title change below), git status
# PROMPT='%F{cyan}%1d%f%F{magenta}$(__git_ps1 "(%s)")%#%f '

# current directory (1 deep), git status, different colors
PROMPT='%F{cyan}%1d%f%F{magenta}$(__git_ps1 "(%s)")%#%f '


# display working directory in iterm title
# iterm>pref>profiles>general>basics>title: Session Name
# code from: https://gist.github.com/phette23/5270658?permalink_comment_id=3020766#gistcomment-3020766
# subbing ~ home path in https://unix.stackexchange.com/a/207237
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD/#$HOME/~}\a"
}


export EDITOR='atom'



# aliases

alias ls="ls -a"

alias g="git"


# navigation

alias dot="cd ~/projects/dotfiles"

alias opdot="atom ~/projects/dotfiles"
