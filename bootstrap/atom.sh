#!/bin/bash

SYNC_DIRECTORY=$1

if [ -z "$SYNC_DIRECTORY" ]; then
  echo "Please specify the path to the sync directory"
  exit
fi

if [ ! -d "$SYNC_DIRECTORY" ]; then
  echo "$SYNC_DIRECTORY is not a valid sync directory"
  exit
fi

USER_PREFERENCES_PATH="$HOME/.atom"
BACKUP_LOCATION="$USER_PREFERENCES_PATH/Backup$(date +%s)"

mkdir "$BACKUP_LOCATION"

declare -a preferenceFiles=(
  "config.cson"
  "init.coffee"
  "keymap.cson"
  "packages.cson"
  "snippets.cson"
  "styles.less"
)

for preferenceFile in ${preferenceFiles[*]}
do
  PF="$USER_PREFERENCES_PATH/$preferenceFile"
  PFB="$BACKUP_LOCATION/$preferenceFile"

  if [ -L "$PF" ]; then
    echo "  -> removing existing symlink for $preferenceFile"
    rm "$PF"
  fi

  if [ -f "$PF" ]; then
    echo "  -> backing up existing $preferenceFile to $PFB"
    mv "$PF" "$PFB"
  fi

  ln -s "$SYNC_DIRECTORY/$preferenceFile" "$PF"
done
