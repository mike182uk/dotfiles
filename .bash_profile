# load in additional dotfiles
declare -a dotfiles=(
    "path"
    "bash_prompt"
    "exports"
    "aliases"
    "functions"
)

for dotfile in ${dotfiles[*]}
do
    if [ -r ".$dotfile" ]; then
        source ".$dotfile"
    fi
done

unset dotfiles

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell
