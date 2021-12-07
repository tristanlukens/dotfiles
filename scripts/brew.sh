#  _
# | |__  _ __ _____      __
# | '_ \| '__/ _ \ \ /\ / /
# | |_) | | |  __/\ V  V /
# |_.__/|_|  \___| \_/\_/
#

# brew packages install script by Tristan Lukens
# tristanlukens.github.io

# this script should be run AFTER the links script, because if you would use
# and rosetta emulated terminal emulator (so an x86 terminal), brew would think it
# needs to install its files into /usr/local because the terminal would say your machine
# is an x86 machine. if I don't forget, I will delete this comment when you don't need
# to worry about this

# note that in this file, if there is a comment followed by a space, it is not meant to be uncommented.
# if it is not followed by a space, it may be uncommented (meaning it's a valid command)

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
brew install yt-dlp             # faster youtube-dl (as of the 07-12-2021 (dd-mm-yyyy big brain))!
brew install sdl2 
brew install cowsay
brew install fortune
brew install c2048
brew install tty-solitaire
brew install nsnake
brew install cot
brew install ncurses
brew install pfetch
brew install lolcat
brew install figlet
brew install cmatrix
brew install asciiquarium
brew install git                # Xcode's git is old, install this git. It will automatically point to this new version of git
brew install pipes-sh
brew install tree
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

# install virtualbox if kernel release has X86 in its name, arm doesn't support virtualisation
if uname -v | grep -q "X86_64"; then
    brew install virtualbox
fi

brew install dropbox

