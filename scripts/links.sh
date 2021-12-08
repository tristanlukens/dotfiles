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

# some are however! I am linking the whole zsh directory, so the files within NEED to be prefixed with a dot, ergo TODO: declare the symlinks in a for loop which prefixes ALL seperate files, so no directories, with a dot so they aren't screwed when linking

# an alternative option would be not using ZDOTDIR at all and use directories in this dotfiles directory but just put every symlink in the home directory

LOC="$HOME/dotfiles" # location of the dotfiles directory

ln -s $LOC/nvim $HOME/.config/nvim
ln -s $LOC/gitconfig $HOME/.gitconfig
ln -s $LOC/zshenv $HOME/.zshenv                   # file
ln -s $LOC/zsh $HOME/.config/zsh                  # directory
ln -s $LOC/alacritty $HOME/.config/alacritty
