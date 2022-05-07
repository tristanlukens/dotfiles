#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|

# zsh macOS config by Tristan Lukens
# tristanlukens.github.io

# this should be refactored to be $(brew --prefix) but that takes a long time to load. besides, I'm writing
# this comment on the installation where I (somehow) have like three installations and also one in usr/local
# which shoudn't be possible on arm but well... When I run brew --prefix now, it spits back usr/local
export BREW_PREFIX="/opt/homebrew"
export PATH=$BREW_PREFIX/bin:$PATH

export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"

[[ $BREW_PREFIX == "/opt/homebrew" ]] && alias brew="arch -arm64 brew"
