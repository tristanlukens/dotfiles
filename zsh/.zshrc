#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|
#

# zshrc by Tristan Lukens
# tristanlukens.github.io

# comments correspond to the command UNDERNEATH

# correct this if the dotfiles directory is somewhere else
DOTS="$HOME/dotfiles"

## --BUGFIXES-- ##
# https://stackoverflow.com/questions/36657321/after-installing-homebrew-i-get-zsh-command-not-found-brew
export PATH=/opt/homebrew/bin:$PATH

## --ZINIT-- ##
# contains everything zinit needs to install if needed and to source the correct files
source $DOTS/zsh/zinit.zsh

## --ALIASES-- ##
alias v=nvim
alias vim=nvim

alias zconf="v $ZDOTDIR/.zshrc && clear && source $ZDOTDIR/.zshrc"
alias aconf="v $DOTS/alacritty/alacritty.yml"
alias vconf="v $DOTS/nvim/init.vim"

alias solitaire="ttysolitaire --no-background-color -p 10"
alias la="ls -la"

# alias for brew, because brew wants to install shit to /usr/local when using a rosetta emulated terminal emulator
if [[ $(uname -v | grep "ARM64") != "" ]]; then
    alias brew="arch -arm64 brew"
fi

## --PROMPT-- ##
PROMPT="%B%K{cyan} %n %k %K{208} in %k %K{yellow}%F{black} %~ %k%f λ%b "

## --AUTOSTART-- ##
fortune | cowsay

## --MISC-- ##
# https://unix.stackexchange.com/questions/391641/separate-path-for-zcompdump-files#391670
# https://stackoverflow.com/questions/67136714/how-to-properly-call-compinit-and-bashcompinit-in-zsh
# I might not use this forever, since it slows the load time of the shell down a lot
autoload -Uz compinit
compinit -d $HOME/.cache/zsh/zcompdump-$ZSH_VERSION

