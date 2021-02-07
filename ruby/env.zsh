#!/usr/bin/env sh

# initialise rbenv
if test "$(command -v rbenv)"; then
  # eval "$(rbenv init -)"
  _evalcache rbenv init -
fi
