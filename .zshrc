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
alias zconf="v $HOME/.zshrc && szconf"      # automatically sources .zshrc when it is edited
alias szconf="source $HOME/.zshrc"
alias vconf="v $HOME/.config/nvim/init.vim"

## --PROMPT-- ##
PROMPT="%B%K{cyan} %n %k %K{208} in %k %K{41} %~ %k ⌘%b "

## --VI MODE-- ##
bindkey -v

## --AUTOCOMPLETE-- ##                      (copy pasted from Luke Smith's zshrc)
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)       			# Include hidden files.

# vim keys in tab complete mode
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
