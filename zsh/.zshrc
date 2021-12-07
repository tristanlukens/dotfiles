#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|
#

# zshrc by Tristan Lukens
# tristanlukens.github.io

# comments correspond to the command UNDERNEATH

## --ALIASES-- ##
alias v=nvim
alias vim=nvim
# automatically clear screen and source .zshrc when it is edited
alias zconf="v $HOME/.zshrc && clear && source $HOME/.zshrc"
alias aconf="v $HOME/.config/alacritty/alacritty.yml"
alias vconf="v $HOME/.config/nvim/init.vim"
# ttysolitaire with 10 passes
alias solitaire="ttysolitaire --no-background-color -p 10"
alias la="ls -la"

# check if kernel name has ARM64 in it, if it does, make an alias for brew
if [[ $(uname -v | grep "ARM64") != "" ]]
then 
    # alias for brew, because brew wants to install shit to /usr/local when using a rosetta emulated terminal emulator
    alias brew="arch -arm64 brew"
fi

## --PROMPT-- ##
PROMPT="%B%K{cyan} %n %k %K{208} in %k %K{yellow}%F{black} %~ %k%f λ%b "

## --FIXES-- ##
# https://stackoverflow.com/questions/36657321/after-installing-homebrew-i-get-zsh-command-not-found-brew
export PATH=/opt/homebrew/bin:$PATH
