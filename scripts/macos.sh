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
defaults write com.apple.Dock autohide-time-modifier -float 0.4

# turn on showing hidden apps transparently in dock
defaults write com.apple.Dock showhidden -bool true

# turning off show recent apps
defaults write com.apple.Dock show-recents -bool false

# editing the dock's size
defaults write com.apple.Dock tilesize -int 35

# making the dock go to the left side of the screen
defaults write com.apple.Dock orientation -string left

# turning on dock magnification
defaults write com.apple.Dock magnification -bool true

# modifying (is that how that's spelt?) the dock magnification size
defaults write com.apple.Dock largesize -int 45

# "applying" the changes by restarting the dock
killall Dock

# --FINDER-- #

