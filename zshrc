#          _
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|
#

# zshrc by Tristan Lukens
# tristanlukens.github.io

# -- PREP --
export DOTS="$HOME/dotfiles"    # change if dotfiles are installed somewhere else
OS=$(uname -s)

# -- macOS STUFF --
[[ $OS = "Darwin" ]] &&
	export PATH=/opt/homebrew/bin:$PATH     # linking brew
    [[ $(uname -v | grep "ARM64") != "" ]] && alias brew="arch -arm64 brew"     # brew is installed somewhere else on ARM macOS

# -- ALIASES --
alias zconf="v $DOTS/zshrc && source $DOTS/zshrc"
alias vconf="v $DOTS/nvim/init.vim"
alias v="vim"
alias vim="nvim"
alias la="ls -la"
alias t="tree -CaI .git"                                        # tree with colours and hidden files, ignoring .git
alias solitaire="ttysolitaire --no-background-color -p 10"

# -- PROMPT --
#PROMPT="%B%K{cyan} %n %k %K{208} %F{black}in%f %k %~ %F{red}${vcs_info_msg_0_}%f λ %b"    # this one uses git, but I haven't implemented that yet in here
PROMPT="%B%K{cyan} %n %k %K{208} %F{black}in%f %k %~ λ %b"

# -- AUTOCOMPLETE --
# https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52 & https://unix.stackexchange.com/questions/391641/separate-path-for-zcompdump-files#391670
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)

# -- AUTOSTART ON SHELL OPEN --
# fortune | cowsay
cowsay "You should really ask out Isabel."
echo   # empty line for spacing

# -- OTHERS --
HISTFILE=$HOME/.cache/zsh/history   # move the zsh_history file to $HOME/.cache

# -- INSTALLING ZINIT --
# I don't know if this will break when updating, but I have to install it before I can use it to load
# plugins. The installer does say it needs to be at the bottom, but who knows

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

# -- INSTALLING PLUGINS WITH ZINIT --
# https://github.com/jeffreytse/zsh-vi-mode
zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode
