#!/usr/bin/env bash

# Load in NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install latest stable version of node
nvm install stable

# Use stable as the default node version
nvm alias default stable
