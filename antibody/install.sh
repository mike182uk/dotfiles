#!/usr/bin/env bash

set -e

# https://stackoverflow.com/a/246128/1004917
CURRENT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)

antibody bundle <"$CURRENT_DIR/bundles.txt" >~/.zsh_plugins.sh
antibody update
