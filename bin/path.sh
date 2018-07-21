#!/usr/bin/env bash

# https://stackoverflow.com/a/246128/1004917
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)"

export PATH="$PATH:$CURRENT_DIR"
