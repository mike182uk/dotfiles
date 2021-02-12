#!/usr/bin/env sh

# enable persistent REPL history for node
export NODE_REPL_HISTORY_FILE=$HOME/.node_history

# allow 32³ entries; the default is 1000
export NODE_REPL_HISTORY_SIZE=32768

if test "$(command -v fnm)"; then
  # eval "$(fnm env)"
  _evalcache fnm env
fi
