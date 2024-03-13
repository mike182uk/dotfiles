> [!NOTE]  
> Superseded by [syscfg](https://github.com/mike182uk/syscfg)

# Dotfiles

## Prerequisites

- Git
- Ruby (to install `homebrew`)

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

You should store your local config in `~/.localrc`. This file will be sourced automatically by `~/.zshrc`.

I use this file to set my global git config options:

```bash
export GIT_AUTHOR_NAME="<name>"
export GIT_AUTHOR_EMAIL="<email>"
export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
```
