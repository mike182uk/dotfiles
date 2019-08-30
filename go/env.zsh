#!/usr/bin/env sh

export GIMME_SILENT_ENV=1

# initialise gimme
if test "$(command -v gimme)"; then
	eval "$(gimme stable)"
fi

export GOPATH=$HOME/Go
