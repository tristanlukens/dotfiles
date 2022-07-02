#!/usr/bin/env bash

# the "pointer" for iTerm's settings needs to be configured in its own Preferences menu

DOTS=$HOME/dots

ln -s $DOTS/git/gitconfig $HOME/.gitconfig
ln -s $DOTS/zsh/zshrc     $HOME/.zshrc
ln -s $DOTS/nvim          $HOME/.config/nvim
ln -s $DOTS/karabiner     $HOME/.config/karabiner
ln -s $DOTS/yabai         $HOME/.config/yabai
ln -s $DOTS/skhd          $HOME/.config/skhd
