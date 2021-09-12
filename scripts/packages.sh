#                   _
#  _ __   __ _  ___| | ____ _  __ _  ___  ___
# | '_ \ / _` |/ __| |/ / _` |/ _` |/ _ \/ __|
# | |_) | (_| | (__|   < (_| | (_| |  __/\__ \
# | .__/ \__,_|\___|_|\_\__,_|\__, |\___||___/
# |_|                         |___/

# brew packages install script by Tristan Lukens
# tristanlukens.com
# I hope the site above is going to be a thing soon :)

# this script should be run AFTER the links script, because if you would use
# and rosetta emulated terminal emulator (so an x86 terminal), brew would think it
# needs to install its files into /usr/local because the terminal would say your machine
# is an x86 machine. if I don't forget, I will delete this comment when you don't need
# to worry about this

# note that in this file, if there is a comment followed by a space, it will not ever be uncommented.
# if it is not followed by a space, it may be uncommented if you need it to be uncommented

#!/bin/sh

# installing the xcode command line tools
# this is a prerequisite for installing brew
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
brew install sld2
# optional formulae. uncomment one if you need it
#brew install cowsay
#brew install fortune
#brew install pfetch
#brew install lolcat
#brew install figlet
#brew install cmatrix
#brew install asciiquarium
# terminal games
brew install tty-solitaire
brew install nsnake
# casks
brew install rectangle
brew install alacritty
brew install spotify
brew install minecraft
brew install typora
brew install visual-studio-code
brew install amethyst
brew install coconutbattery
# optional casks. uncomment one if you need it
#brew install godot
#brew install blender
#brew install magicavoxel
#brew install atom
#brew install figma
#brew install gimp
#brew install inkscape
