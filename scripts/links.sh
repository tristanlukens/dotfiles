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

# files with a dot are not prefixed with a dot in this directory (but the aliases are of course)

LOC="$HOME/dotfiles" # location of the dotfiles directory

ln -s $LOC/nvim $HOME/.config/nvim
ln -s $LOC/gitconfig $HOME/.gitconfig
ln -s $LOC/zshenv $HOME/.zshenv                   # linking the file
ln -s $LOC/zsh $HOME/.config/zsh                  # linking the directory
ln -s $LOC/alacritty $HOME/.config/alacritty
