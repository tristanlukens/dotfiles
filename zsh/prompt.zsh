#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|

# zsh prompt config by Tristan Lukens
# tristanlukens.github.io

# 0 = gruvbox
# 1 = ayu
# 2 = gruvbox minimal
theme=2
 
[[ $theme = 0 ]] && PROMPT="%B%K{cyan} %n %k %K{208} %F{black}in%f %k %~ λ %b"
[[ $theme = 1 ]] && PROMPT="%F{black}%B%K{45} %n %k %K{208} in%f %k %~ λ %b"
[[ $theme = 2 ]] && PROMPT="%B%K{cyan} %~ %k%b -> "
