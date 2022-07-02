# setup guide

This guide should be the guide to setting up my dotfiles, for now. In the future, I want to automate all this shit (at least all the scripting stuff).

## macOS

### cloning things

1. download dotfiles folder from github web and put it in $HOME
1. run `links.bash` script

zsh is going to throw a lot of errors now, but those'll be fixed after brew is installed.

### instaling things

#### brew

1. install xcode command line tools: `xcode-select --install`
1. install brew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
1. reload shell: `reload` (I've set it up as an alias in zshrc)
1. install all brew packages: `brew bundle --file scripts/macOS-setup/Brewfile`

#### npm

npm should already be installed, so you should just be able to install things already.

`npm install -g coffeescript live-server marked nodemon parcel rollup sass sirv svelte-langauge-server tailwindcss tsserver typescript typescript-language-server vercel vim-language-server vue yarn`

#### ruby

1. install newest ruby version: `ruby-install ruby`
1. reload shell: `reload`
1. verify that everything worked: `ruby -v`
   This should output ruby's newest verison, not 2.x.y (or something)
1. install gems I want: `gem install --user-install jekyll bundler rufo rubocop`

#### haskell

1. install haskell via ghcup: `curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`
1. reload shell: `reload`
1. verify that everything worked: `ghci --version`
   This should output something good, not `zsh: command not found: ghci`

#### the best language ever

1. install rust: `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
1. reload shell: `reload`
1. verify that everything worked: `rustup --version`
   This should output something good, not `zsh: command not found: rustup`

#### go

1. see if brew's go version is up-to-date. If it is, just run `brew install go`. Otherwise, install from [go's downloads page](https://go.dev/dl)
1. install the recommended go analysis tools
   1. open vim
   1. press `space + c`
   1. run go.install.tools

### wallpapers

1. `git clone https://github.com/tristanlukens/wallpapers $HOME/Pictures`
1. add this folder to Desktop and Screen Saver in System Preferences (and no Apple, I will call it System Settings!)
1. choose a background and its appropriate type

### post-installation steps

This used to be in README.

1. open Rectangle's preferences and make `^ + ⌥ + \` the shortcut for _Almost Maximize_ and tick on Launch at Login
1. open Brewlet's preferences and turn on Check for updates to 1 hour and turn off Share Analytics. The correct Homebrew Location should be selected, but if it's not, take care of that
1. turn on Dock Hiding (can also be done by pressing ⌘ + ⌥ + D)
1. open iTerm's preferences and do following:

   - make $DOTS/iterm the folder for preferences
   - `defaults write com.apple.dock autohide-delay -float 0 && killall Dock`
     This will get rid of the stupid delay of the dock showing when Dock Hiding is on. You can return to the default one by running
     `defaults delete com.apple.Dock autohide-delay && killall Dock`

1. open System Preferences and adjust macOS's preferences to your liking, but at least
   - make Brave the default browser
   - add the $HOME/Pictures/wallpapers folder to the Folders section in Desktop & Screen Saver
1. go into Finder's Preferences and select tick all of the boxes to show everything on the Desktop. A new Finder window should show $HOME. Turn off all tags, and show everything but Recents and Recent Tags in the sidebar. Also, tick on Show All Filename Extensions and both Keep Folders on top boxes
1. go into Safari's preferences and select Seperate tabs. Make the default search engine DuckDuckGo. Additionally, tick on Show full website address and Show Develop in menu bar
1. make DDG the default search engine in all browsers
1. go into Safari's preferences and select Seperate tabs. Additionally, tick on Show full website address and Show Develop in menu bar
1. install the WhatFont and Vimium C extensions in Brave and Firefox

The rest (things like logging into apps etc) should come to you while you're using the OS. These are the most important things.

## Linux

todo :D
