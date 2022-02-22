#           _
#  ___  ___| |_ _   _ _ __
# / __|/ _ \ __| | | | '_ \
# \__ \  __/ |_| |_| | |_) |
# |___/\___|\__|\__,_| .__/
#                    |_|
#

# setup script by Tristan Lukens
# tristanlukens.github.io

#!/usr/bin/env bash

# IMPORTANT: THIS SCRIPT HAS NOT BEEN TESTED AT THE TIME OF WRITING

./brew.bash       || echo "brew install script failed; exited" && exit
./npm.bash        || echo "npm install script failed; exited" && exit
./links.bash      || echo "links script failed; exited" && exit
./wallpapers.bash || echo "wallpapers script failed; exited" && exit

echo "Success! There's still things to do though; following the post-setup steps in the README."
