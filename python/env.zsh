#!/usr/bin/env sh

export PYENV_ROOT=$HOME/.pyenv

# initialise pyenv
if test "$(command -v pyenv)"; then
  # eval "$(pyenv init -)"
  _evalcache pyenv init -
fi
