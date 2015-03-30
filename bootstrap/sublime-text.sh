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

APP_PATH="/Applications/Sublime Text.app"
APP_CONTENTS_PATH="$APP_PATH/Contents"
APP_RESOURCES_PATH="$APP_CONTENTS_PATH/Resources"
APP_SUPPORT_PATH="$HOME/Library/Application Support/Sublime Text 3"
PACKAGES_PREFERENCES_PATH="$APP_SUPPORT_PATH/Packages"
USER_PREFERENCES_PATH="$PACKAGES_PREFERENCES_PATH/User"

#
# Install icon
#
function installIcon() {
    cp "resources/sublime-text/Sublime Text.icns" "$APP_RESOURCES_PATH/Sublime Text.icns"
}

#
# Install subl bin
#
function installSublBin() {
  if [ ! -f /usr/local/bin/subl ]; then
    ln -s "$APP_CONTENTS_PATH/SharedSupport/bin/subl" /usr/local/bin/subl
  else
    echo "  -> subl bin already installed"
  fi
}

#
# Symlink user preferences
#
function symlinkUserPreferences() {
  if [ -L "$USER_PREFERENCES_PATH" ]; then
    echo "  -> removing existing symlink"
    rm "$USER_PREFERENCES_PATH"
  fi

  if [ -d "$USER_PREFERENCES_PATH" ]; then
    BACKUP_LOCATION="$PACKAGES_PREFERENCES_PATH/User-Backup$(date +%s)"
    echo "  -> backing up existing preferences to $BACKUP_LOCATION"
    mv "$USER_PREFERENCES_PATH" "$BACKUP_LOCATION"
  fi

  ln -s "$SYNC_DIRECTORY" "$USER_PREFERENCES_PATH"
}

# Run
echo "-> Installing icon..." && installIcon
echo "-> Installing subl bin..." && installSublBin
echo "-> Symlinking user preferences..." && symlinkUserPreferences
