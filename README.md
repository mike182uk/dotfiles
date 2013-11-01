#Dotfiles

My OS X dotfiles

## Installation

Clone this repository to a suitable location and `cd` into it.

```
git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles 
```

Run the sync script.

```
. sync.sh
```

## Local config / commands

You should store your local specific conifg / commands in `~/bash_local`. If this file is available, it will be sourced automatically by `~/.bash_profile`. I use this file to set my global git config options:

```
# Git credentials
# Not under version control to prevent people from
# accidentally committing with my details
GIT_AUTHOR_NAME="Mike Barrett"
GIT_AUTHOR_EMAIL="mike182uk@gmail.com"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

# Set the credentials (modifies ~/.gitconfig)
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"

```

## Bootstrap Scripts

In the bootstrap directory there are a couple of scripts to bootstrap the system.