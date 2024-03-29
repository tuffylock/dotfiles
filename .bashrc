export PATH=$PATH:/Users/fosborn/code/mobile-notary-infra/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# brew install git bash-completion
. /usr/local/etc/bash_completion.d/git-prompt.sh
. /usr/local/etc/bash_completion.d/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

# prompt: working directory (home as ~), colored git status branch
# https://wiki.archlinux.org/title/Bash/Prompt_customization
 # https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html
# colors https://stackoverflow.com/a/689804/5598661
#  \e[0;31m (turn on red foreground) and \e[0m (turn off character attributes)
export PS1='\W$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$ '

export EDITOR='atom'


# don't use aliases for complex operations; use functions: https://stackoverflow.com/a/757149


alias simpleserver="python -m SimpleHTTPServer 8000"

alias ls="ls -a"

alias slang="atom ~/.bashrc"
alias gitconfig="atom ~/.gitconfig"


alias g="git"
alias clearbranches="git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D"


alias keysha="openssl pkey -in privateKey.key -pubout -outform pem | sha256sum"
alias crtsha="openssl x509 -in certificate.crt -pubkey -noout -outform pem | sha256sum"
alias sslcheck="cd ~/code; openssl x509 -in certificate.crt -pubkey -noout -outform pem | sha256sum; openssl pkey -in privateKey.key -pubout -outform pem | sha256sum;"


alias bx="bundle exec"

# worth trying? https://jdanger.com/what-does-bundle-exec-do.html
# for cmd in rspec ruby rubocop rails; do
#   alias $cmd="bundle exec $cmd"
# done

alias serv="bin/rails s webrick"
alias fore="foreman start -m all=1,web=0"

alias con="bin/rails c"

alias db="bin/rake db:migrate db:test:prepare after_party:run"
alias fresh="git stash; git checkout develop; git pull; bundle; yarn install; bin/rake db:migrate db:test:prepare; bin/rake audit_trails:db:migrate audit_trails:db:test:prepare; bin/rake after_party:run; bin/rake sync_flippers; git checkout -- .;"
alias setup="bundle; yarn install; bin/rake db:migrate db:test:prepare; bin/rake after_party:run; bin/rake sync_flippers;"


alias dot="cd ~/code/dotfiles"
alias notes="cd ~/code/notes"

alias opdot="atom ~/code/dotfiles"
alias opnotes="atom ~/code/notes"



# https://apple.stackexchange.com/a/360827
newtabi() {
  osascript \
    -e 'tell application "iTerm2" to tell current window to set newWindow to (create tab with default profile)'\
    -e "tell application \"iTerm2\" to tell current session of newWindow to write text \"${@}\""
}

appserv() {
  newtabi 'bundle exec rails s'
  newtabi 'bin/sidekiq'
  newtabi 'cd frontend; yarn start'
}



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
