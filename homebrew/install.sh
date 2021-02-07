#!/usr/bin/env bash

set -e

CURRENT_DIR=$(dirname "$0")

# shellcheck source=/dev/null
. "$CURRENT_DIR/env.zsh"

if test "$(command -v brew)"; then
  brew bundle --file="$CURRENT_DIR/Brewfile"
fi
