#  _ _       _
# | (_)_ __ | | _____
# | | | '_ \| |/ / __|
# | | | | | |   <\__ \
# |_|_|_| |_|_|\_\___/
#

# links script by Tristan Lukens
# tristanlukens.github.io

#!/bin/sh

# this script is cross-compatible, meaning it can be used on Linux and macOS
# it presumes the dotfiles directory is located in $HOME

LOC="$HOME/dotfiles" # location of the dotfiles directory

ln -s $LOC/nvim $HOME/.config/nvim
ln -s $LOC/.gitconfig $HOME/.gitconfig
ln -s $LOC/.zshenv $HOME/.zshenv
ln -s $LOC/alacritty $HOME/.config/alacritty
