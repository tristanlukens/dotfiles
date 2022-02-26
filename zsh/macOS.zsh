#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|

# zsh macOS config by Tristan Lukens
# tristanlukens.github.io

export BREW_PREFIX="/opt/homebrew"
export PATH=$BREW_PREFIX/bin:$PATH

[[ $BREW_PREFIX == "/opt/homebrew" ]] && alias brew="arch -arm64 brew"  # brew is installed in /opt/homebrew instead of /usr/local on ARM macOS. This can cause problems with x86 terminal emulaters using rosetta