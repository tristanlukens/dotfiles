#  _ _       _
# | (_)_ __ | | _____
# | | | '_ \| |/ / __|
# | | | | | |   <\__ \
# |_|_|_| |_|_|\_\___/
#

# links script by Tristan Lukens
# tristanlukens.com
# I hope the site above is going to be a thing soon :)

#!/bin/sh

# this script is cross-compatible, meaning it can be used on Linux and macOS
# it presumes the dotfiles directory is located in $HOME

# make this variable the location of the dotfiles directory's location
LOC="$HOME/dotfiles"

# creating the links
ln -s $LOC/nvim $HOME/.config/nvim
ln -s $LOC/.gitconfig $HOME/.gitconfig
ln -s $LOC/.zshrc $HOME/.zshrc
ln -s $LOC/alacritty $HOME/.config/alacritty
