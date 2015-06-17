#Dotfiles

## Installation

Clone this repository to a suitable location (i use `~/Project/dotfiles`) and `cd` into it.

```bash
git clone https://github.com/mike182uk/dotfiles.git && cd dotfiles
```

Run the sync script.

```bash
. sync.sh
```

Any time you want to sync any new changes, navigate to the dotfiles directory and run this script.

## Local Config / Commands

You should store your local specific conifg / commands in `~/.bash_local`. If this file is available, it will be sourced automatically by `~/.bash_profile`.

I use this file to set my global git config options:

```bash
# Git credentials
# Not under version control to prevent people from
# accidentally committing with my details
GIT_AUTHOR_NAME="Michael Barrett"
GIT_AUTHOR_EMAIL="mike182uk@gmail.com"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

# Set the credentials (modifies ~/.gitconfig)
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## Bootstrap Scripts

In the bootstrap directory there are a couple of scripts to bootstrap the system (install packages / configure system etc).

- `brew-cask.sh` - Installs mac os x apps via brew cask
- `brew.sh` - Installs and updates homebrew formulae
- `gems.sh` - Installs and updates ruby gems
- `npm.sh` - Installs and updates node packages
- `nvm.sh` - Installs node via nvm
- `osx.sh` - Sets sensible OS X defaults
- `phpbrew.sh` - Installs PHP via phpbrew
- `pip.sh` - Installs python packages
- `rbenv.sh` - Installs Ruby via rbenv
- `sublime-text.sh` - Sets up sublime text
- `vagrant.sh` - Installs useful vagrant plugins
- `vim.sh` - Installs vim plugins

#### sublime-text.sh

The Sublime Text bootstrap script performs the following tasks:

- Installs `subl` binary to `/usr/local/bin`
- Installs a nicer dock icon
- Creates a symlink for the user preferences

Navigate to boostrap directory and run

```
./sublime-text.sh <path-to-sync-directory>
```

The sync directory is a directory where you keep your Sublime Text user preferences (normally found at `/Users/<user>/Library/Application Support/Sublime Text 3/Packages/User`).

I currently store my Sublime Text user preferences in my dropbox, so i would run the command like this:

```
./sublime-text.sh ~/Dropbox/sublime/preferences
```

## Binaries
Any binaries that are not installed globally can be added to the bin directroy. This directory is automatically added to `$PATH` in `.paths`.
