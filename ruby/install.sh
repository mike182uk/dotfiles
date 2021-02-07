#!/usr/bin/env sh

set -e

if test ! "$(command -v rbenv)"; then
  exit
fi

LATEST_VERSION=$(ruby-build --definitions | grep "^[0-9].[0-9].[0-9]$" | tail -n 1)

# install latest stable version of ruby
rbenv install "$LATEST_VERSION"

# use latest stable version of ruby globally
rbenv global "$LATEST_VERSION"
