#  _           _        _ _
# (_)_ __  ___| |_ __ _| | |
# | | '_ \/ __| __/ _` | | |
# | | | | \__ \ || (_| | | |
# |_|_| |_|___/\__\__,_|_|_|

# install setup script by Tristan Lukens
# tristanlukens.github.io

#!/usr/bin/env bash

# IMPORTANT: THIS SCRIPT HAS NOT BEEN TESTED AT THE TIME OF WRITING

# -- BREW --
# installation
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# prep
BREW_PREFIX=$(brew --prefix)
[[ $BREW_PREFIX == "/opt/homebrew" ]] && alias brew="arch -arm64 brew"     # Brew is installed somewhere else on ARM macOS. This is also in zshrc, but that's not been run here.

# verifying correct installation
if ! type "brew" >> /dev/null; then
  echo "Brew installation failed; exited with code 1"
  exit 1
fi

# formulae
brew install git
brew install gh
brew install zsh
brew install bash
brew install neovim
brew install tmux
brew install ttysolitaire
brew install bat
brew install figlet
brew install ffmpeg
brew install fortune
brew install cowsay
brew install jq
brew install lua
brew install go
brew install rbenv
brew install rust
brew install node
brew install deno
brew install pfetch
brew install tree
brew install tty-clock
brew install fzf
brew install imagemagick
brew install htop
brew install yt-dlp

# casks
brew tap homebrew/cask

brew install --cask rectangle
brew install --cask brewlet
brew install --cask visual-studio-code-insiders
brew install --cask iterm2
brew install --cask github
brew install --cask spotify
brew install --cask firefox
brew install --cask curseforge
brew install --cask minecraft
brew install --cask amethyst
brew install --cask keycastr
brew install --cask kitty
brew install --cask barrier
brew install --cask spotter

# fonts
brew tap homebrew/cask-fonts

brew install --cask font-lilex
brew install --cask font-roboto-mono
brew install --cask font-fira-code
brew install --cask font-share-tech-mono
brew install --cask font-roboto
brew install --cask font-roboto-slab
brew install --cask font-inter
brew install --cask font-lora
brew install --cask font-crimson-pro

# final
PATH="$BREW_PREFIX/bin:$PATH"  # This is needed for npm to work correctly. This same thing in zshrc, but that's not been run here.

echo "Brew itself and its formulae, casks and fonts were installed succesfully. Press enter to continue to npm."
read -p "" && echo "Pressed enter; continuing"

# -- NPM --
# verifying that node is installed correctly
if ! type "node" >> /dev/null; then
  echo "Node is not installed correctly: it's not installed, or not in \$PATH; exited with code 1"
  exit 1
fi

# packages
npm install -g yarn
npm install -g live-server
npm install -g typescript

# final
echo "npm packages were installed successfully. Press enter to continue to rubygems."
read -p "" && echo "Pressed enter; continuing"

# -- RUBY --
# you apperantly need this (https://jekyllrb.com/docs/installation/macos/)
export SDKROOT=$(xcrun --show-sdk-path)

# setting up rbenv
source $DOTS/zsh/program-conf/rbenv.bash

# verifying that rbenv is installed correctly
if ! type "rbenv"; then
  echo "rbenv is not installed correctly: it's not installed, or not in $PATH; exited with code 1"
  exit 1
fi

# change these if there's a newer version!
rbenv install 3.1.2
rbenv global 3.1.2

# packages
gem install --user-install jekyll
gem install --user-install bundler
gem install --user-install rufo
gem install --user-install rubocop
