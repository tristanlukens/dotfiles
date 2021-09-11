#  _ _       _
# | (_)_ __ | | _____
# | | | '_ \| |/ / __|
# | | | | | |   <\__ \
# |_|_|_| |_|_|\_\___/

# links script by Tristan Lukens
# tristanlukens.com
# I hope the site above is going to be a thing soon :)

#!/bin/sh

# run this script to make all the symlinks on macOS
# this script presumes the dotfiles directory is located in $HOME

# make this variable the location of the dotfiles directory's location
LOC="$HOME/dotfiles"

# creating the links
ln -s $LOC/nvim $HOME/.config/nvim
ln -s $LOC/.gitconfig $HOME/.gitconfig
ln -s $LOC/settings.json $HOME/Library/"Application Support"/Code/User/settings.json
ln -s $LOC/.zshrc $HOME/.zshrc
ln -s $LOC/alacritty $HOME/.config/alacritty
