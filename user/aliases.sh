#!/usr/bin/env bash

# easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"

# location shortcuts
alias dl="cd ~/Downloads"
alias db="cd ~/Dropbox"
alias d="cd ~/Documents"
alias p="cd ~/Projects"
alias gp="cd ~/Projects/Go"
alias h="cd ~"
alias .f="cd ~/.dotfiles"

# editor
alias e='$EDITOR'

# recursively delete .DS_Store files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# get week number
alias week='date +%V'

# stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# url encode a string
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# update installed software
alias update='echo "Updating..."'
alias u='update'

# snpt
alias cs="snpt ls | fzf | snpt cp"
alias ws="snpt ls | fzf | snpt write"
