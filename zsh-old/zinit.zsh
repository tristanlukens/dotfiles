#      _       _ _
#  ___(_)_ __ (_) |_
# |_  / | '_ \| | __|
#  / /| | | | | | |_
# /___|_|_| |_|_|\__|
#

# zinit script (only this script, not the plugin manager :)) by Tristan Lukens
# tristanlukens.github.io

# the first part of this script is the part which is added to $HOME/.zshrc when the install
# script is run. I use ZDOTDIR to move my .zshrc to .config/zsh, which breaks zinit's system.
# I have opened an issue on github to fix this, but this is a solution

# https://github.com/zdharma-continuum/zinit/issues/133

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

## --sourcing--
# I do not use .zshrc for anything; my actual zshrc (symlink) is in $HOME/.config/zsh
# I can safely remove it as long as other programs do not use it
[[ ! $HOME/.zshrc ]] && rm -f $HOME/.zshrc
