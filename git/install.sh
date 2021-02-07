#!/usr/bin/env sh

set -e

GIT_CONFIG_PATH=$HOME/.gitconfig

if [ -f "$GIT_CONFIG_PATH" ]; then
  mv "$GIT_CONFIG_PATH" "$GIT_CONFIG_PATH.backup$(date +%s)"
fi

touch "$GIT_CONFIG_PATH"

git config --global include.path ~/.gitconfig.local
git config --global core.excludesfile "$HOME/.gitignore"

# use diff-so-fancy for better diffs
if test "command -v diff-so-fancy"; then
  git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
fi
