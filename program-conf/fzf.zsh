#   __     __
#  / _|___/ _|
# | ||_  / |_
# |  _/ /|  _|
# |_|/___|_|

# fzf config by Tristan Lukens
# tristanlukens.github.io

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
