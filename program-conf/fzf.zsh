#   __     __
#  / _|___/ _|
# | ||_  / |_
# |  _/ /|  _|
# |_|/___|_|

# fzf config by Tristan Lukens
# https://tristanlukens.github.io

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,target} --type f"

# uses bat
export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
