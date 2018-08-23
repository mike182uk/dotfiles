#!/usr/bin/env sh

if test ! "$(command -v brew)" || test ! "$(command -v fzf)"; then
	return
fi

FZF_PATH=$(brew --prefix fzf)

# shellcheck source=/dev/null
. "$FZF_PATH/shell/completion.zsh"
