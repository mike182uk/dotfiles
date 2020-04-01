#!/usr/bin/env bash

set -e

CURRENT_DIR=$(dirname "$0")

# shellcheck source=/dev/null
. "$CURRENT_DIR/env.zsh"

antibody bundle <"$CURRENT_DIR/bundles.txt" >~/.zsh_plugins.sh
antibody update
