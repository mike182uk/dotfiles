#!/usr/bin/env bash

set -e

BASH_LOCAL_PATH=$HOME/.bash_local

if [ -f "$BASH_LOCAL_PATH" ]; then
	mv "$BASH_LOCAL_PATH" "$BASH_LOCAL_PATH.backup$(date +%s)"
fi

touch "$BASH_LOCAL_PATH"
