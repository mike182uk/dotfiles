# Load in additional dotfiles
declare -a dotfiles=(
  "$HOME/.path"
  "$HOME/.bash_prompt"
  "$HOME/.exports"
  "$HOME/.aliases"
  "$HOME/.functions"
  "$HOME/.bash_local"
)

# If these files are readable, source them
for dotfile in ${dotfiles[*]}
do
  if [[ -r "$dotfile" ]]; then
    source "$dotfile"
  fi
done

unset dotfiles

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# If possible, add tab completion for many more commands
[ -f "$(brew --prefix)/etc/bash_completion" ] && source "$(brew --prefix)/etc/bash_completion"

# Load in Z
source "$(brew --prefix)/etc/profile.d/z.sh"

# Init rbenv
eval "$(rbenv init -)"

# Init nvm
source $(brew --prefix nvm)/nvm.sh

# Init phpbrew
source "$HOME/.phpbrew/bashrc"
