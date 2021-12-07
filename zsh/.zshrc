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

# edit this command if the location of the dotfiles changes
alias DOTS="$HOME/dotfiles"
alias zconf="v $ZDOTDIR/.zshrc && clear && source $ZDOTDIR/.zshrc"
alias aconf="v $DOTS/alacritty/alacritty.yml"
alias vconf="v $DOTS/nvim/init.vim"

alias solitaire="ttysolitaire --no-background-color -p 10"

alias la="ls -la"

# alias for brew, because brew wants to install shit to /usr/local when using a rosetta emulated terminal emulator
if [[ $(uname -v | grep "ARM64") != "" ]]
then 
    alias brew="arch -arm64 brew"
fi

## --PROMPT-- ##
PROMPT="%B%K{cyan} %n %k %K{208} in %k %K{yellow}%F{black} %~ %k%f λ%b "

## --AUTOSTART-- ##
fortune | cowsay

## --FIXES-- ##
# https://stackoverflow.com/questions/36657321/after-installing-homebrew-i-get-zsh-command-not-found-brew
export PATH=/opt/homebrew/bin:$PATH
