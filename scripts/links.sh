#  _ _       _
# | (_)_ __ | | _____
# | | | '_ \| |/ / __|
# | | | | | |   <\__ \
# |_|_|_| |_|_|\_\___/
#

# links script by Tristan Lukens
# tristanlukens.github.io

#!/bin/zsh

# this script is cross-compatible, meaning it can be used in Linux and macOS

# $DOTS is declared in .zshrc, but in a bootstrap script, it is not there yet. if it does not exists yet, create it here, locally
#[[ ! $DOTS ]] && DOTS="$HOME/dotfiles"
## check if .config exists, if it does not, make it
#[[ ! $HOME/.config ]] && mkdir $HOME/.config
#    
## lists in which the orders matter
#FILES=(
#	"$DOTS/zsh/zshenv"
#    "$DOTS/zsh/zshrc"
#    "$DOTS/gitconfig"
#    "$DOTS/nvim"
#    "$DOTS/alacritty"
#)
#DEST=(
#	"$HOME/.zshenv"
#	"$HOME/.config/zsh/.zshrc"
#    "$HOME/.gitconfig"
#    "$HOME/.config/nvim"
#	"$HOME/.config/alacritty"
#)
#
## index for getting the index of DEST
#INDEX=0
#
## creating the symlink by using the first file as the original, and the destination
## will be the index of $DEST. after this, increment the index by 1
## https://linuxize.com/post/bash-increment-decrement-variable/
#for file in ${FILES[@]}; do
#    ln -s $file ${DEST[$INDEX]}
#    ((INDEX=INDEX+1))
#done

# ----------------------------------------------------------------

