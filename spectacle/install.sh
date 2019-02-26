#!/usr/bin/env bash

set -e

# https://stackoverflow.com/a/246128/1004917
CURRENT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)

cp -r "$CURRENT_DIR/Spectacle.json" ~/Library/Application\ Support/Spectacle/Shortcuts.json 2> /dev/null