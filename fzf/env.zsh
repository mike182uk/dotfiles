#!/usr/bin/env sh

export FZF_TMUX=1
export FZF_TMUX_HEIGHT=50%
export FZF_COMPLETION_TRIGGER=..
export FZF_DEFAULT_OPTS="
  --color=bg+:4,fg+:7,hl:4,hl+:7
  --color=info:4,prompt:4,spinner:4,pointer:7,marker:7
  --inline-info
"

if test "$(command -v fd)"; then
  # use fd (https://github.com/sharkdp/fd) instead of the default find
  # command for listing path candidates
  _fzf_compgen_path() {
    fd --hidden --follow --exclude ".git" . "$1"
  }

  # use fd to generate the list for directory completion
  _fzf_compgen_dir() {
    fd --type d --hidden --follow --exclude ".git" . "$1"
  }
fi
