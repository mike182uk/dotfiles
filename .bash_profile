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
