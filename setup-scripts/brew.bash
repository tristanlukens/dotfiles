#  _
# | |__  _ __ _____      __
# | '_ \| '__/ _ \ \ /\ / /
# | |_) | | |  __/\ V  V /
# |_.__/|_|  \___| \_/\_/
#

# brew packages install setup script by Tristan Lukens
# tristanlukens.github.io

#!/usr/bin/env bash

# IMPORTANT: THIS SCRIPT HAS NOT BEEN TESTED AT THE TIME OF WRITING

# -- INSTALLATION --
[[ $(uname -s) = "Darwin" ]] && xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# -- PREP --
[[ $(brew --prefix) == "/opt/homebrew" ]] && alias brew="arch -arm64 brew"     # brew is installed somewhere else on ARM macOS. This is also in zsh, but again, that's not been run now
alias bi="brew install"

# -- FORMULAE --
bi git
bi gh
bi zsh
bi bash
bi neovim
bi tmux
bi ttysolitaire
bi bat
bi figlet
bi ffmpeg
bi fortune
bi cowsay
bi jq
bi lua
bi ruby
bi go
bi rust
bi node
bi deno
bi pfetch
bi tree
bi tty-clock
bi fzf
bi imagemagick
bi htop
bi yt-dlp

# -- CASKS --
bi rectangle
bi brewlet
bi spotify
bi firefox
bi amethyst
bi keycastr
bi minecraft
bi kitty
bi barrier
bi spotter
