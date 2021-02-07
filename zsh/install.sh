#!/usr/bin/env sh

set -e

LOCAL_RC_PATH=$HOME/.localrc
PLUGINS_PATH=$HOME/.zsh

if [ -f "$LOCAL_RC_PATH" ]; then
	mv "$LOCAL_RC_PATH" "$LOCAL_RC_PATH.backup$(date +%s)"
fi

touch "$LOCAL_RC_PATH"

# install plugins
git clone https://github.com/sindresorhus/pure.git "$PLUGINS_PATH/pure"
git clone https://github.com/bigH/git-fuzzy.git "$PLUGINS_PATH/git-fuzzy"
git clone https://github.com/mroth/evalcache "$PLUGINS_PATH/evalcache"
