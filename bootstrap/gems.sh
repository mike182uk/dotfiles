#!/bin/bash

# Upgrade any already-installed gems
gem update --system

# Install bundler
gem install bundler

# Install sass + compass
gem install sass
gem install compass

# Install chef + related utilities
gem install chef
gem install librarian-chef