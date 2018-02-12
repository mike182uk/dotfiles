#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Add additional taps
brew tap homebrew/dupes
brew tap homebrew/completions
brew tap homebrew/versions
brew tap homebrew/binary
brew tap caskroom/fonts
brew tap tldr-pages/tldr
brew tap argon/mas
brew tap go-delve/delve

# Install Bash 4
brew install bash
brew install bash-completion

# Install misc binaries
brew install coreutils         # Install GNU core utilities (those that come with OS X are outdated)
brew install findutils         # Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
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

# Install GIT stuff
brew install git
brew install diff-so-fancy

# Install ruby stuff
brew install rbenv
brew install ruby-build
brew install rbenv-gem-rehash
brew install rbenv-bundler

# Install python stuff
brew install python
brew install python3

# Install haskell stuff
brew install ghc
brew install cabal-install

# Install packer
brew install packer

# Install Go stuff
brew install go
brew install delve

# Install misc utils
brew install z
brew install wifi-password
brew install ffmpeg
brew install fzf
brew install httpie
brew install jid
brew install mas
brew install ssh-copy-id
brew install tldr
brew install awscli
brew install makeicns
brew install svg2png
brew install fpp
brew install ctop
brew install watch
brew install minio/stable/mc
brew install kubectx
brew install shfmt

# Install misc completions
brew install vagrant-completion
brew install docker-completion
brew install docker-compose-completion
brew install brew-cask-completion

# Install cask stuff
brew install caskroom/cask/brew-cask

# Add symlinks for binaries that aren't linked automatically
brew link bison --force

# Remove outdated versions from the cellar
brew cleanup
