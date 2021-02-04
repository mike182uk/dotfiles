#!/usr/bin/env sh

# initialise phpenv
export PHP_BUILD_CONFIGURE_OPTS="--with-bz2=$(brew --prefix bzip2) --with-iconv=$(brew --prefix libiconv) --with-tidy=$(brew --prefix tidy-html5) --with-zlib-dir=$(brew --prefix zlib)"

if test "$(command -v phpenv)"; then
	eval "$(phpenv init -)"
fi
