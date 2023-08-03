## commands
* mkdir -p
  * creates nested folders (ie: existing-folder/new-folder/folder-baby)
* list and kill processes
  * ps
  * kill INSERTPIDNUM
* ps aux | grep rubyki
  * list all running ruby processes
  * column names: https://superuser.com/questions/117913/ps-aux-output-meaning
* kill -9 PID
  * kill a process (PID: second column of ps aux results)
* sudo kill -9 $(lsof -i :3000 -t)
  * fallback server killer
* env | grep -i PATH
* ls -A -S | du -d 1 | sort -n -r
  * sort all folders (including hidden) by size (and display in bytes)

## shortcuts
* ctl-r
  * search previous commands
* ctl-a
  * beginning of line
* ctl-e
  * end of line
* ctl-u
  * delete to start of line
* ctl-k
  * delete to end of line
* opt-b
  * move back a word
* opt-f
  * move forward a word
* ctl-w
  * delete previous word
* ctl-l / cmd-k
  * clear screen / clear screen and can't scroll back
  * ctl-l doesn't work on live logs, eg rails server


## shell scripts
* create home bin directory/copy from dotfiles/bin
  * cd ~
  * mkdir bin


## notes
* moving and copying files: https://learn.adafruit.com/an-illustrated-shell-command-primer/moving-and-copying-files-mv-and-cp
  *

## TODO
* tmux
* vim
