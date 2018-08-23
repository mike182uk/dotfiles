#!/usr/bin/env zsh

# forces zsh to realize new commands
zstyle ':completion:*' completer _oldlist _expand _complete _match _ignored _approximate

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# rehash if command not found (possibly recently installed)
zstyle ':completion:*' rehash true

# always use select menu
zstyle ':completion:*' menu select

# menu list-colors
zstyle ':completion:*' list-colors "$LS_COLORS:ma=1;44"
