#!/usr/bin/env bash

set -e

# https://stackoverflow.com/a/246128/1004917
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)"

if test "$(command -v brew)"; then
	brew bundle --file="$CURRENT_DIR/Brewfile"
fi
