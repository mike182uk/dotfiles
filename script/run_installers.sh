#!/usr/bin/env bash

set -e

DOTFILES_ROOT="$HOME/.dotfiles"

# run homebrew installer first to ensure any dependencies needed by the other
# installers have been installed

HOMEBREW_INSTALLER="$DOTFILES_ROOT/homebrew/install.sh"

if [ -s "$HOMEBREW_INSTALLER" ]; then
	# shellcheck source=/dev/null
	source "$HOMEBREW_INSTALLER"
fi

# run all installers except for the homebrew installer
find -H "$DOTFILES_ROOT" -maxdepth 2 -name 'install.sh' -not -path '*.git*' -not -path '*homebrew*' |
	while read -r installer; do
		echo "running installer: $installer"

		# shellcheck source=/dev/null
		source "$installer"
	done
