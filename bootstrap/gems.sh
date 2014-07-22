#!/bin/bash

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

# Install chef + related utilities
gem install chef
gem install knife-solo
gem install librarian-chef
gem install berkshelf
gem install chefspec
gem install fauxhai
gem install foodcritic
