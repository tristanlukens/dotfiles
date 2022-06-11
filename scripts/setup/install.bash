#!/usr/bin/env bash

# IMPORTANT: THIS SCRIPT HAS NOT BEEN TESTED AT THE TIME OF WRITING

alias err="echo 'installation failed; exited with code 1'; exit 1"
check() { [ ! type $1 >> /dev/null ] && err }
success() { check $1 && echo "$1 was installed successfully. Press enter to continue"; read -p "" && echo "Pressed enter; continuing" }

# -- BREW --
# installation
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

source ${0:a:h}/utils/env.bash

check "brew"

brew bundle --file "Brewfile"

success

# ---------------------------------------------------------------- #

## -- NPM -- ##
# verifying that node is installed correctly
check "node"

# packages
npm install -g coffeescript
npm install -g live-server
npm install -g marked
npm install -g nodemon
npm install -g parcel
npm install -g rollup
npm install -g sass
npm install -g sirv
npm install -g svelte-langauge-server
npm install -g tailwindcss
npm install -g tsserver
npm install -g typescript
npm install -g typescript-language-server
npm install -g vercel
npm install -g vim-language-server
npm install -g vue
npm install -g yarn

success

# ---------------------------------------------------------------- #

# -- RUBY --

# verifying that ruby is installed correctly
check ruby-install
check chruby

# installing ruby itself
ruby-install ruby

# alternative for check function
[[ $(where ruby) =~ "$(brew --prefix)" ]] && echo "boo" || err

# packages
gem install --user-install jekyll
gem install --user-install bundler
gem install --user-install rufo
gem install --user-install rubocop

# -- RUSTUP -- #
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
