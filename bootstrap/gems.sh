#!/usr/bin/env bash

# Upgrade Rubygems
gem update --system

# Upgrade any already-installed gems
gem update

# Install bundler
gem install bundler

# Install rake
gem install rake

# Install misc utilities
gem install tmuxinator
gem install travis
