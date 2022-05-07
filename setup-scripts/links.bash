#  _ _       _
# | (_)_ __ | | _____
# | | | '_ \| |/ / __|
# | | | | | |   <\__ \
# |_|_|_| |_|_|\_\___/

# linking script by Tristan Lukens
# tristanlukens.github.io

#!/usr/bin/env bash

# the "pointer" for iTerm's settings needs to be configured in its own Preferences menu

[[ ! $DOTS ]] && DOTS=$HOME/dotfiles # $DOTS might exist already; it's declared in zshrc as well. This might not have been run however, when this script should be run

ln -s $DOTS/git/gitconfig  $HOME/.gitconfig
ln -s $DOTS/zsh/zshrc      $HOME/.zshrc
ln -s $DOTS/nvim           $HOME/.config/nvim
ln -s $DOTS/tmux/tmux.conf $HOME/.tmux.conf
