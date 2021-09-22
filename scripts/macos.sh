#                        ___  ____
#  _ __ ___   __ _  ___ / _ \/ ___|
# | '_ ` _ \ / _` |/ __| | | \___ \
# | | | | | | (_| | (__| |_| |___) |
# |_| |_| |_|\__,_|\___|\___/|____/
#

# macOS preferences shell script by Tristan Lukens
# tristanlukens.com
# I hope the site above is going to be a thing soon :)

# when running this script, it will edit all settings from the current settings, which makes settings sync
# kind of hard. it's kind of hard to comprehend so I will just show how to fix it. it's as simple as just
# resetting everything I'm working on from then.

#!/bin/sh

# --DOCK-- #

# reset
defaults delete com.apple.Dock

# turn on dock hiding
defaults write com.apple.Dock autohide -bool true

# remove the delay for showing the dock
defaults write com.apple.Dock autohide-delay -int 0

# editing the dock appearing speed (setting it to 0.4 seconds)
#defaults write com.apple.Dock autohide-time-modifier -float 0.4

# turn on showing hidden apps transparently in dock
defaults write com.apple.Dock showhidden -bool true

# turning off show recent apps
defaults write com.apple.Dock show-recents -bool false

# editing the dock's size
defaults write com.apple.Dock tilesize -int 35

# making the dock go to the left side of the screen
defaults write com.apple.Dock orientation -string bottom

# turning on dock magnification
defaults write com.apple.Dock magnification -bool true

# modifying (is that how that's spelt?) the dock magnification size
defaults write com.apple.Dock largesize -int 45

# "applying" the changes by restarting the dock
killall Dock


# --FINDER-- #

# reset
defaults delete com.apple.Finder

# DESKTOP
# enable stacks (by kind)
defaults write com.apple.Finder DesktopViewSettings -dict-add GroupBy -string Kind

# sort the stacks by kind
defaults write com.apple.Finder DesktopViewSettings -dict-add IconViewSettings "{arrageBy=kind;}"

# set the default file path for new finder window
defaults write com.apple.Finder NewWindowTarget -string "PfLo"
defaults write com.apple.Finder NewWindowTargetPath -string file://${HOME}

# making finder be able to be quit; doing so also hides all desktop icons
defaults write com.apple.Finder QuitMenuItem -bool true

# show hidden files by default
defaults write com.apple.Finder AppleShowAllFiles -bool true

# show the status bar by default
defaults write com.apple.Finder ShowStatusBar -bool true

# show all hard disks and connected servers on the desktop
defaults write com.apple.Finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.Finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.FInder ShowMountedServersOnDesktop -bool true

# change the default view style of finder to list
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# "applying" the chages by restarting finder
killall Finder


# show all filename extensions
#defaults write NSGlobalDomain AppleShowAllExtensions -bool true
