#!/usr/bin/env sh

set -e

if test "$(command -v hyper)"; then
	hyper install hyper-snazzy
fi
