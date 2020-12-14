#!/usr/bin/env sh

# initialise phpenv
if test "$(command -v phpenv)"; then
	eval "$(phpenv init -)"
fi
