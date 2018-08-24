#!/usr/bin/env zsh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# dont nice background tasks
setopt NO_BG_NICE
setopt NO_HUP
setopt NO_BEEP

# allow functions to have local options
setopt LOCAL_OPTIONS

# allow functions to have local traps
setopt LOCAL_TRAPS

# share history between sessions ???
setopt SHARE_HISTORY

# add timestamps to history
setopt EXTENDED_HISTORY
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD

# adds history
setopt APPEND_HISTORY

# adds history incrementally and share it across sessions
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# dont record dupes in history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt HIST_EXPIRE_DUPS_FIRST

# dont ask for confirmation in rm globs*
setopt RM_STAR_SILENT

# backward and forward word with option+left/right
bindkey "\e[1;2C" forward-word
bindkey "\e[1;2D" backward-word

# search history with fzf if installed, default otherwise
if test "$(command -v brew)"; then
	FZF_PATH=$(brew --prefix fzf)

	if test -d "$FZF_PATH/shell"; then
		source "$FZF_PATH/shell/key-bindings.zsh"
	else
		bindkey "^R" history-incremental-search-backward
	fi
fi