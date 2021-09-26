#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | | 
# /___|___/_| |_|
#

# zshrc by Tristan Lukens
# tristanlukens.com
# I hope the site above is going to be a thing soon :)
#
# very based of of https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52 (zshrc of Luke Smith)

## --ALIASES-- ##
alias v=nvim
alias vim=nvim
alias zconf="v $HOME/.zshrc && clear && source $HOME/.zshrc"      # automatically clear screen and source .zshrc when it is edited
alias aconf="v $HOME/.config/alacritty/alacritty.yml"
alias vconf="v $HOME/.config/nvim/init.vim"
alias solitaire="ttysolitaire --no-background-color -p 10"        # ttysolitaire with 10 passes
alias la="ls -la"

# check if kernel name has ARM64 in it, if it does, make an alias for brew
if [[ $(uname -v | grep "ARM64") != "" ]]
then 
    # alias for brew, because brew wants to install shit to /usr/local when using alacritty (which is x86)
    alias brew="arch -arm64 brew"
fi

## --PROMPT-- ##
PROMPT="%B%K{cyan} %n %k %K{208} in %k %K{yellow}%F{black} %~ %k%f ⌘%b "

## --VI MODE-- ##
bindkey -v
export KEYTIMEOUT=1

## --AUTOCOMPLETE-- ##                      (copy pasted from Luke Smith's zshrc)
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)       			# Include hidden files.

# make autocomplete case insensitive
# https://stackoverflow.com/questions/24226685/have-zsh-return-case-insensitive-auto-complete-matches-but-prefer-exact-matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# vim keys in tab complete mode
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# --HISTORY-- #
HISTSIZE=10000
SAVEHIST=10000

# --"AUTOSTART" SHIT-- #
# pfetch                                    # print pfetch
fortune -s | cowsay                         # print a random fortune quote and make a cow say it
