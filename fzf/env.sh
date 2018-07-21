#!/usr/bin/env bash

if test ! "$(command -v brew)" || test ! "$(command -v fzf)"; then
	return
fi

FZF_PATH="$(brew --prefix fzf)"

# shellcheck source=/dev/null
source "$FZF_PATH/shell/key-bindings.bash"

export FZF_TMUX="1"
export FZF_TMUX_HEIGHT="50%"
export FZF_COMPLETION_TRIGGER=".."
export FZF_DEFAULT_OPTS='
  --color=bg+:4,fg+:7,hl:4,hl+:7
  --color=info:4,prompt:4,spinner:4,pointer:7,marker:7
  --inline-info
'
