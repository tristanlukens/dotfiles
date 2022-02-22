#  _ __  _ __  _ __ ___
# | '_ \| '_ \| '_ ` _ \
# | | | | |_) | | | | | |
# |_| |_| .__/|_| |_| |_|
#       |_|
#

# npm packages install setup script by Tristan Lukens
# tristanlukens.github.io

#!/usr/bin/env bash

# IMPORTANT: THIS SCRIPT HAS NOT BEEN TESTED AT THE TIME OF WRITING

# this script assumes you've already executed the brew.bash script, thus npm should already be installed. Otherwise, just install npm in whichever way you want

# -- PREP --
alias ni="npm install -g"

# -- PACKAGE INSTALLATION --
ni yarn
ni live-server
ni typescript
