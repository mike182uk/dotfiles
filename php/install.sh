#!/usr/bin/env sh

set -e

if test ! "$(command -v phpenv)"; then
  exit
fi

# install phpenv
git clone git://github.com/phpenv/phpenv.git "$HOME/.phpenv"

# install php-build
git clone git://github.com/php-build/php-build.git "$HOME/.phpenv/plugins/php-build"

LATEST_VERSION=$("$HOME/.phpenv/plugins/php-build/bin/php-build" --definitions | grep "^[0-9].[0-9].[0-9]$" | tail -n 1)

# install latest stable version of php
phpenv install "$LATEST_VERSION"

# use latest stable version of php globally
phpenv global "$LATEST_VERSION"
