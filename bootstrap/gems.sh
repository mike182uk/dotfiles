#!/usr/bin/env bash

# Upgrade Rubygems
gem update --system

# Upgrade any already-installed gems
gem update

# Install bundler
gem install bundler

# Install rake
gem install rake

# Install rspec
gem install rspec

# Install capistrano
gem install capistrano

# Install sass + compass
gem install sass
gem install compass

# Install travis cli
gem install travis

# Install misc utilities
gem install tmuxinator
