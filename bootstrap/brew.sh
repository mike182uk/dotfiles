#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Add additional taps
brew tap homebrew/dupes
brew tap homebrew/completions
brew tap homebrew/versions
brew tap homebrew/binary
brew tap caskroom/fonts
brew tap tldr-pages/tldr

# Install Bash 4
brew install bash
brew install bash-completion

# Install misc binaries
brew install coreutils # Install GNU core utilities (those that come with OS X are outdated)
brew install findutils # Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install wget --enable-iri # Install wget with IRI support
brew install ack
brew install homebrew/dupes/grep
brew install tree
brew install homebrew/dupes/tidy
brew install bison

# Install tmux stuff
brew install tmux
brew install reattach-to-user-namespace

# Install brew cask
brew install brew-cask

# Install GIT
brew install git

# Install PHP Stuff
brew install composer --ignore-dependencies
brew install box --ignore-dependencies

# Install a DB for when we need to work quick and dirty (locally)
brew install mariadb

# Install node stuff
brew install nvm

# Install mongo
brew install mongo

# Install redis
brew install redis

# Install ruby stuff
brew install rbenv
brew install ruby-build
brew install rbenv-gem-rehash
brew install rbenv-bundler

# Install python stuff
brew install python
brew install python3

# Install packer
brew install packer

# Install misc utils
brew install z
brew install ngrok
brew install wifi-password
brew install ffmpeg
brew install fzf
brew install httpie
brew install ssh-copy-id
brew install tldr

# Install misc completions
brew install vagrant-completion
brew install docker-completion

# Install cask stuff
brew install caskroom/cask/brew-cask

# Add symlinks for binaries that aren't linked automatically
brew link bison --force

# Remove outdated versions from the cellar
brew cleanup
