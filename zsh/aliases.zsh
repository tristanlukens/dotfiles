#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|

# zsh alias and function config by Tristan Lukens
# tristanlukens.github.io

alias zconf="v $DOTS/zsh/zshrc && source $DOTS/zsh/zshrc"
alias vconf="v $DOTS/nvim/init.vim"
alias la="ls -la"
alias t="tree -CaI .git"

alias solitaire="ttysolitaire --no-background-color -p 10"

# using if statements because I want `vim` to open the current directory, or the first argument if it's there
vim() {
    if [[ $# -eq 0 ]]; then
        nvim .
    else
        nvim $1
    fi
}

v() {
    if [[ $# -eq 0 ]]; then
        vim .
    else
        vim $1
    fi
}

ef() {
    local output=$(fzf)

    if [[ ! $output == "\n" ]]; then
        vim $output
    else
        echo "Input file required; exited"
    fi
}

conf() {
    old=$(pwd)
    cd $DOTS

    local output=$(fzf)

    if [[ -n $output ]]; then
        vim $output
    else
        echo "Input file required; exited"
    fi

    cd $old
}
