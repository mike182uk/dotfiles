#!/usr/bin/env bash

set -e

if test ! "$(command -v brew)"; then
	echo "installing brew..."

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	echo "brew installed!"
else
	echo "brew already installed!"
fi
