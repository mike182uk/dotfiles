#!/usr/bin/env sh

set -e

LOCAL_RC_PATH=$HOME/.localrc

if [ -f "$LOCAL_RC_PATH" ]; then
	mv "$LOCAL_RC_PATH" "$LOCAL_RC_PATH.backup$(date +%s)"
fi

touch "$LOCAL_RC_PATH"
