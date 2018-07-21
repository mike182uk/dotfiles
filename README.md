# Dotfiles

## Prerequisites

- Git
- Bash

## Installation

1. Clone this repository into a directory called `.dotfiles` inside your `$HOME` directory and `cd` into it:

```bash
git clone https://github.com/mike182uk/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
```

2. Install Homebrew:

```bash
script/install_brew.sh
```

3. Bootstrap the system:

```bash
script/run_installers.sh
```

4. Setup the symlinks:

```bash
script/setup_symlinks.sh
```

## Local config

You should store your local config in `~/.bash_local`. This file will be sourced automatically by `~/.bash_profile`.

I use this file to set my global git config options:

```bash
GIT_AUTHOR_NAME="<name>"
GIT_AUTHOR_EMAIL="<email>"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```
