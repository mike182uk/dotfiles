#!/usr/bin/env sh

# copy my public key to the pasteboard
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to pasteboard.'"

# quickly view / edit my SSH config
alias sshconf="cat ~/.ssh/config"
alias esshconf='$EDITOR ~/.ssh/config'
