#!/usr/bin/env bash

set -e

if test "$(command -v fnm)"; then
  fnm install --lts
fi

# ensure empty node history file has been created
if [ ! -f "$NODE_REPL_HISTORY_FILE" ]; then
  touch "$NODE_REPL_HISTORY_FILE"
fi
