#!/bin/bash

function sync() {
    rsync --exclude ".git/" \
          --exclude "bootstrap/" \
          --exclude ".DS_Store" \
          --exclude "sync.sh" \
          --exclude "README.md" \
          --verbose \
          --archive \
          . ~

    # Load in sync'd dotfiles
    source ~/.bash_profile
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    sync
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sync
    fi
fi

unset sync
