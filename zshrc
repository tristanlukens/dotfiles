#          _
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|
#

# zshrc by Tristan Lukens
# tristanlukens.github.io

# -- PREP --
export DOTS="$HOME/dotfiles"			# change if dotfiles are installed somewhere else
OS=$(uname -s)

# -- macOS STUFF --
[[ $OS = "Darwin" ]] &&
	export PATH=/opt/homebrew/bin:$PATH	# linking brew
