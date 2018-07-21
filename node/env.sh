#!/usr/bin/env bash

# enable persistent REPL history for node
export NODE_REPL_HISTORY_FILE="$HOME/.node_history"

# allow 32³ entries; the default is 1000
export NODE_REPL_HISTORY_SIZE="32768"

# nvm dir
export NVM_DIR="$HOME/.nvm"

# initialise nvm

# shellcheck source=/dev/null
if [ -s "$NVM_DIR/nvm.sh" ]; then
	source "$NVM_DIR/nvm.sh"
fi
