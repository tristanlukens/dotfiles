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

# installing the xcode command line tools
# this is a prerequisite for installing brew

# not required all the time, because cloning the dotfiles
# repo needs git, which will prompt downloading the xcode command line tools
xcode-select --install
# installing brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# required formulae
brew install nvim
brew install node
brew install go
brew install htop
brew install gotop
brew install youtube-dl
brew install sdl2
brew install cowsay
brew install fortune

# terminal games
brew install tty-solitaire
brew install nsnake

# optional formulae. uncomment when needed
#brew install pfetch
#brew install lolcat
#brew install figlet
#brew install cmatrix
#brew install asciiquarium

# casks
brew install rectangle
brew install alacritty
brew install spotify
brew install minecraft
brew install typora
brew install visual-studio-code
brew install coconutbattery
brew install barrier
brew install firefox

# optional casks. uncomment one if you need it
#brew install amethyst
#brew install godot
#brew install blender
#brew install magicavoxel
#brew install atom
#brew install figma
#brew install gimp
#brew install inkscape
