#!/usr/bin/env sh

set -e

if test ! "$(command -v pyenv)"; then
  exit
fi

# install latest stable version of python 2
pyenv install 2:latest
