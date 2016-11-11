#!/usr/bin/env bash

# Load in NVM
source $(brew --prefix nvm)/nvm.sh

# Install latest stable version of node
nvm install stable

# Use iojs as the default node version
nvm alias default stable
