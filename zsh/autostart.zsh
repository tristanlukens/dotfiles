#          _
#  _______| |__
# |_  / __| '_ \
#  / /\__ \ | | |
# /___|___/_| |_|

# zsh autostart config by Tristan Lukens
# tristanlukens.github.io

fc() {
  fortune -s | cowsay
  echo  # empty line for spacing
}

kanye() {
  quote=$(curl -s api.kanye.rest | jq ".quote")
  echo "$quote \n — Kanye West" | cowsay && echo  # empty line for spacing
}

# ----------------

kanye
