#!/usr/bin/env bash

LATEST_STABLE_VERSION=$(ruby-build --definitions | grep ^[0-9].[0-9].[0-9]$ | tail -n 1)

# Install latest stable version of ruby
rbenv install $LATEST_STABLE_VERSION

# Use latest stable version of ruby globally
rbenv global $LATEST_STABLE_VERSION
