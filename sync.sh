#!/usr/bin/env bash

function sync() {
	rsync --exclude ".git/" \
		--exclude "bootstrap/" \
		--exclude "etc/" \
		--exclude ".DS_Store" \
		--exclude "sync.sh" \
		--exclude "README.md" \
		--verbose \
		--archive \
		. ~

	# Load in synced dotfiles
	source ~/.bash_profile
}

# Get the latest changes
git pull origin master

# Sync the dotfiles
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	sync
else
	read -p "This may overwrite existing dotfiles in your home directory. Are you sure you want to continue? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sync
	fi
fi

unset sync
