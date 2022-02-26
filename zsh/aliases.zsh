#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|

# zsh alias and function config by Tristan Lukens
# tristanlukens.github.io

alias reload="source $DOTS/zsh/zshrc"
alias la="ls -la"
alias t="tree -Cax"
alias tr="tree -CaI .git -I node_modules"

alias showpath="print -l $path | bat"

alias solitaire="ttysolitaire --no-background-color -p 10"

ct() {
  cd $1 && t
}

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

  if [[ -n $output ]]; then
      vim $output
  else
      echo "No input file specified; exited"
  fi
}

conf() {
  old=$(pwd)
  cd $DOTS

  local output=$(fzf)

  if [[ -n $output ]]; then
      vim $output
  else
      echo "No input file specified; exited"
  fi

  cd $old
}
