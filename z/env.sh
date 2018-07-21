#!/usr/bin/env bash

# initialise z
if test "$(command -v brew)"; then
	Z_INIT_PATH="$(brew --prefix)/etc/profile.d/z.sh"

	# shellcheck source=/dev/null
	if [ -s "$Z_INIT_PATH" ]; then
		source "$Z_INIT_PATH"
	fi
fi
