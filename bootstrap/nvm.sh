#!/bin/bash

# Install latest stable version of node
nvm install stable

# Install latest stable version of iojs
nvm install iojs

# Use iojs as the default node version
nvm alias default stable
