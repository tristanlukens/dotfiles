#                   _
#  _ __   __ _  ___| | ____ _  __ _  ___  ___
# | '_ \ / _` |/ __| |/ / _` |/ _` |/ _ \/ __|
# | |_) | (_| | (__|   < (_| | (_| |  __/\__ \
# | .__/ \__,_|\___|_|\_\__,_|\__, |\___||___/
# |_|                         |___/
#

# brew packages install script by Tristan Lukens
# tristanlukens.com
# I hope the site above is going to be a thing soon :)

# this script should be run AFTER the links script, because if you would use
# and rosetta emulated terminal emulator (so an x86 terminal), brew would think it
# needs to install its files into /usr/local because the terminal would say your machine
# is an x86 machine. if I don't forget, I will delete this comment when you don't need
# to worry about this

# note that in this file, if there is a comment followed by a space, it is not meant to be uncommented.
# if it is not followed by a space, it may be uncommented (meaning it's a valid valid command)

#!/bin/sh

# --BREW-- #

# installing the xcode command line tools
# this is a prerequisite for installing brew
# not required all the time, because cloning the dotfiles
# repo needs git, which will prompt downloading the xcode command line tools
xcode-select --install
# installing brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# formulae
brew install nvim
brew install node
brew install go
brew install htop
brew install gotop
brew install youtube-dl
brew install sdl2                       # I might use sdl2 for go based apps
brew install cowsay
brew install fortune
brew install c2048
brew install tty-solitaire
brew install nsnake
brew install cot
brew install ncurses                    # might use it for projects in future
brew install pfetch
brew install lolcat
brew install figlet
brew install cmatrix
brew install asciiquarium
brew install git                        # Xcode's git is old, install this git. It will automatically point to this new version of git
brew install pipes-sh
brew install tree
brew install vifm
brew install tty-clock
brew install brewlet

# formulae with seperate taps
brew tap coteditor/coteditor

# casks
brew install rectangle
brew install alacritty
brew install spotify
brew install steam
brew install minecraft
brew install typora
brew install visual-studio-code
brew install sublime-text
brew install coconutbattery
brew install barrier
brew install firefox
brew install github
brew install google-chrome
brew install coteditor
brew install boop
brew install obs
brew install balenaetcher
brew install discord
brew install figma
brew install blender
brew install magicavoxel
brew install godot
brew install atom
brew install gimp
brew install inkscape

# install virtualbox if kernel release has X86 in its name, arm doesn't support virtualisation
if uname -v | grep -q "X68_64"; then
    brew install virtualbox
fi

brew install dropbox

# --NPM-- #

npm i -g typescript
npm i -g live-server
npm i -g prettier
npm i -g rollup
npm i -g yarn
npm i -g nodemon
npm i -g postcss-cli
npm i -g vue-cli
