# scripts

This directory contains setup scripts, and utility scripts.

## Setup scripts

These are meant for creating a new (macOS) installation. It automatcally installs packages, and configures these dotfiles.

## Utiity scripts

At the time of writing, only the `env.bash` script exists. It sets up the enviroment: it adds to $PATH, and sources scripts that would be sourced in zshrc. I chose to create this script instead of using zshrc because I can use bash now, and I can use it in a bash install script. Because of this, I can avoid having to install zsh when setting up a Linux machine, since these come with bash most of time. I want the same enviroment on Darwin when setting up the machine as on Linux.
