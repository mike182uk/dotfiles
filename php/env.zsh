#!/usr/bin/env sh

# initialise phpenv
export PHP_BUILD_CONFIGURE_OPTS="--with-bz2=/usr/local/opt/bzip2 --with-iconv=/usr/local/opt/libiconv --with-tidy=/usr/local/opt/tidy-html5 --with-zlib-dir=/usr/local/opt/zlib"

if test "$(command -v phpenv)"; then
  # eval "$(phpenv init -)"
  _evalcache phpenv init -
fi
