#  _ _       _
# | (_)_ __ | | _____
# | | | '_ \| |/ / __|
# | | | | | |   <\__ \
# |_|_|_| |_|_|\_\___/
#

# links script by Tristan Lukens
# tristanlukens.github.io

#!/bin/sh

# this script is cross-compatible, meaning it can be used in Linux and macOS

# scripts that are used by these files ARE NOT SYNCED. they are run with a simple source with the $DOTS variable

# $DOTS is declared in .zshrc, but in a bootstrap script, it is not yet. if it does not exists yet, create it here, locally
if [[ ! $DOTS ]]; then
    DOTS="$HOME/dotfiles"
fi

# check if .config exists, if it does not, make it
if [[ ! $HOME/.config ]]; then
    mkdir $HOME/.config
fi

# lists in which the orders matter
FILES=(
	"$DOTS/zsh/zshenv"
    "$DOTS/zsh/zshrc"
    "$DOTS/gitconfig"
    "$DOTS/nvim"
    "$DOTS/alacritty"
)
DEST=(
	"$HOME/.zshenv"
	"$HOME/.config/zsh/.zshrc"
    "$HOME/.gitconfig"
    "$HOME/.config/nvim"
	"$HOME/.config/alacritty"
)

# index for getting the index of DEST
INDEX=0

# creating the symlink by using the first
# file as the original, and the destination
# will be the index of $DEST. after this,
# increment the index by 1
# https://linuxize.com/post/bash-increment-decrement-variable/
for file in ${FILES[@]}; do
    ln -s $file ${DEST[$INDEX]}
    ((INDEX=INDEX+1))
done

