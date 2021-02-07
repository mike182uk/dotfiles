#!/usr/bin/env sh

if test ! "$(command -v fzf)"; then
  return
fi

# shellcheck source=/dev/null
. "/usr/local/opt/fzf/shell/completion.zsh"
