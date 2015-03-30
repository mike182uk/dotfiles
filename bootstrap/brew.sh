#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Add additional taps
brew tap homebrew/dupes
brew tap homebrew/completions
brew tap homebrew/versions
brew tap josegonzalez/homebrew-php
brew tap mcuadros/homebrew-hhvm
brew tap phinze/cask
brew tap homebrew/binary

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

# Install tmux stuff
brew install tmux
brew install reattach-to-user-namespace

# Install brew cask
brew install brew-cask

# Install GIT
brew install git

# Install PHP Stuff
brew install php56
brew install php56-mcrypt
brew install php56-xdebug
brew install php56-xhprof
brew install phpdocumentor
brew install phpunit
brew install php-cs-fixer
brew install composer
brew install box
brew install hhvm --HEAD --with-mariadb
brew install php-code-sniffer
brew install phpmd
brew install phploc
brew install phpcpd
brew install pdepend

# Install a DB for when we need to work quick and dirty (locally)
brew install mariadb

# Install node and mongo
brew install node
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

# Install docker stuff
brew install docker
brew install docker-compose

# Install packer
brew install packer

# Install misc utils
brew install z
brew install ngrok
brew install wifi-password
brew install ffmpeg
brew install httpie
brew install ssh-copy-id

# Install misc completions
brew install vagrant-completion

# Remove outdated versions from the cellar
brew cleanup
