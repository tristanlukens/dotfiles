#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|

# zsh macOS config by Tristan Lukens
# tristanlukens.github.io

export PATH=/opt/homebrew/bin:$PATH
export PATH=$HOME/.gem/ruby/3.0.0/bin:$PATH
[[ $(brew --prefix) == "/opt/homebrew" ]] && alias brew="arch -arm64 brew"     # brew is installed somewhere else on ARM macOS
