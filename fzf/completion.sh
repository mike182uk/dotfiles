#!/usr/bin/env bash

if test ! "$(command -v brew)" || test ! "$(command -v fzf)"; then
	return
fi

FZF_PATH="$(brew --prefix fzf)"

# shellcheck source=/dev/null
source "$FZF_PATH/shell/completion.bash"
