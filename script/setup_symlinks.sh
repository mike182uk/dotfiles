#!/usr/bin/env sh

set -e

DOTFILES_ROOT=$HOME/.dotfiles

link_file() {
  if [ -e "$2" ]; then
    if [ "$(readlink "$2")" = "$1" ]; then
      echo "skipped $1"

      return 0
    else
      backup_path="$2.backup$(date +%s)"

      mv "$2" "$backup_path"

      echo "moved $2 to $backup_path"
    fi
  fi

  ln -sf "$1" "$2"

  echo "linked $1 to $2"
}

find -H "$DOTFILES_ROOT" -maxdepth 3 -name "*.symlink" -not -path "*.git*" |
  while read -r src; do
    dst="$HOME/.$(basename "${src%.*}")"

    link_file "$src" "$dst"
  done
