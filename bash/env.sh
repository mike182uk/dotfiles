#!/usr/bin/env bash

# ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# increase the maximum number of lines contained in the history file (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE

# prefer UK English and use UTF-8
export LANG="en_GB.UTF-8"

# load in bash completion
if test "$(command -v brew)"; then
	BASH_COMPLETION_PATH="$(brew --prefix)/etc/bash_completion"

	if [ -f "$BASH_COMPLETION_PATH" ]; then
		# shellcheck source=/dev/null
		source "$BASH_COMPLETION_PATH"
	fi
fi

# setup prompt

# example:
# ~/.dotfiles (master) [+!?$]
# λ

prompt_git() {
	local s=""
	local branchName=""

	# check if the current directory is in a git repository
	if [ $(
		git rev-parse --is-inside-work-tree &>/dev/null
		printf "%s" $?
	) == 0 ]; then

		# check if the current directory is in .git before running git checks
		if [ "$(git rev-parse --is-inside-git-dir 2>/dev/null)" == "false" ]; then

			# ensure index is up to date
			git update-index --really-refresh -q &>/dev/null

			# check for uncommitted changes in the index
			if ! $(git diff --quiet --ignore-submodules --cached); then
				s="$s+"
			fi

			# check for unstaged changes
			if ! $(git diff-files --quiet --ignore-submodules --); then
				s="$s!"
			fi

			# check for untracked files
			if [ -n "$(git ls-files --others --exclude-standard)" ]; then
				s="$s?"
			fi

			# check for stashed files
			if $(git rev-parse --verify refs/stash &>/dev/null); then
				s="$s$"
			fi

		fi

		# get the short symbolic ref
		# if HEAD isn't a symbolic ref, get the short SHA
		# otherwise, just give up
		branchName="$(git symbolic-ref --quiet --short HEAD 2>/dev/null ||
			git rev-parse --short HEAD 2>/dev/null ||
			printf "(unknown)")"

		[ -n "$s" ] && s=" [$s]"

		printf "%s" "$1($branchName)$s"
	else
		return
	fi
}

set_prompts() {
	local reset="\e[0m"

	local black="\e[1;30m"
	local blue="\e[1;34m"
	local cyan="\e[1;36m"
	local green="\e[1;32m"
	local orange="\e[1;33m"
	local purple="\e[1;35m"
	local red="\e[1;31m"
	local white="\e[1;37m"
	local yellow="\e[1;33m"

	# set the terminal title to the current working directory
	#PS1="\[\033]0;\w\007\]"

	PS1="\n"                        # newline
	PS1+="\[$green\]\w "            # working directory
	PS1+="\$(prompt_git \"$blue\")" # git repository details
	PS1+="\n"                       # newline
	PS1+="\[$white\]λ \[$reset\]"

	export PS1
}

set_prompts
unset set_prompts
