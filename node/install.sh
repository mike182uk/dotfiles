#!/usr/bin/env bash

set -e

# https://stackoverflow.com/a/246128/1004917
CURRENT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)

# shellcheck source=/dev/null
. "$CURRENT_DIR/env.zsh"

# ensure nvm is installed
if [ ! -s "$NVM_DIR/nvm.sh" ]; then
	if [ -d "$NVM_DIR" ]; then
		mv "$NVM_DIR" "$NVM_DIR.backup$(date +%s)"
	fi

	git clone https://github.com/creationix/nvm.git "$NVM_DIR"

	# shellcheck source=/dev/null
	. "$NVM_DIR/nvm.sh"
fi

if test "$(command -v nvm)"; then
	nvm install stable
	nvm alias default stable

	echo "you may need to reload your shell if you can not access node or npm"
fi

# ensure empty node history file has been created
if [ ! -f "$NODE_REPL_HISTORY_FILE" ]; then
	touch "$NODE_REPL_HISTORY_FILE"
fi
