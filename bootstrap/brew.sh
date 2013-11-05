#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Add additional taps
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php

# Install Bash 4
brew install bash
brew install bash-completion

# Install misc binaries
brew install coreutils # Install GNU core utilities (those that come with OS X are outdated)
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
brew install findutils # Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install wget --enable-iri # Install wget with IRI support
brew install ack
brew install homebrew/dupes/grep
brew install tree

# Install GIT
brew install git

# Install PHP Stuff
brew install php55
echo "Don’t forget to add $(brew --prefix josegonzalez/php/php55)/bin to \$PATH."
brew install php55-mcrypt
brew install php55-xdebug
brew install phpdocumentor
brew install php-cs-fixer
brew install composer
brew install box

# Install a DB for when we need to work quick and dirty (locally)
brew install mariadb

# Install node and mongo
brew install node
brew install mongo

# Install ruby stuff
brew install rbenv
brew install ruby-build

# Install misc utils
brew install z

# Remove outdated versions from the cellar
brew cleanup
