#!/usr/bin/env sh

VUNDLE_DIR=$HOME/.vim/bundle/vundle

if [ ! -d "$VUNDLE_DIR" ]; then
  git clone https://github.com/gmarik/vundle.git "$VUNDLE_DIR"
fi

# VIM plugins will need to be installed manually once the .vimrc symlink is in place.
#
# vim +PluginInstall +qall
