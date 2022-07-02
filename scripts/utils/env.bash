# also set in zshrc, but well
export DOTS=$HOME/dotfiles

# things which require brew
if [[ $(uname -s) = "Darwin" ]]; then
	# this should be refactored to be $(brew --prefix) but that takes a long time to load. besides, I'm writing
	# this comment on the installation where I (somehow) have like three installations and also one in usr/local
	# which shoudn't be possible on arm but well... When I run brew --prefix now, it spits back usr/local
	export BREW_PREFIX=/opt/homebrew

	export PATH=$BREW_PREFIX/bin:$PATH
	export PATH=$BREW_PREFIX/opt/node@16/bin:$PATH
	export PATH=$BREW_PREFIX/opt/llvm/bin:$PATH

	source $BREW_PREFIX/opt/chruby/share/chruby/chruby.sh
	source $BREW_PREFIX/opt/chruby/share/chruby/auto.sh
else
	# TODO: set up for linux
fi

# ---------------------------------------------------------------- #

## -- CROSS-PLATFORM THINGS -- ##

# go bin
[ -d $HOME/go/bin ] && export PATH="$HOME/go/bin:$PATH"

# ghcup
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

# chruby
type chruby > /dev/null && chruby ruby

# rustup
[ -f $HOME/.cargo/env ] && . "$HOME/.cargo/env"

# python
# TODO

# other
[ -f $DOTS/program-conf/bat.zsh ] && source $DOTS/program-conf/bat.zsh
[ -f $DOTS/program-conf/fzf.zsh ] && source $DOTS/program-conf/fzf.zsh
