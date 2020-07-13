#!/usr/bin/env sh

set -e

GIMME_SILENT_ENV=1 gimme stable

# default go workspace
mkdir -p "$HOME/Go/workspaces/default"
