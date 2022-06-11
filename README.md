```text
     _       _    __ _ _
  __| | ___ | |_ / _(_) | ___  ___
 / _` |/ _ \| __| |_| | |/ _ \/ __|
| (_| | (_) | |_|  _| | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/
```

# dotfiles

My dotfiles.

## What's in here

- iterm
- zsh
- nvim
- git
- yabai
- skhd
- karabiner
- various bash scripts

There's individual READMEs everything but git. Everything has its own folder.

I sync my Visual Studio Code settings with the the built-in feature, but I really only use nvim anymore 😎

## General Todos

There's individual todos sections in the seperate READMEs.

- [ ] create a script for moving themes to ayu. for everything. I like it better than gruvbox
- [ ] make dotfiles location modular, probably using `${0:A:h}`, but I can't get symlinks to be resolved at the time of writing
- [ ] move to pnpm from npm; this would require configuring pnpm to be in .local/share instead of ~/Library in macOS
- [ ] configure python

## Post-setup steps

After you've set up your installation with `$DOTS/scripts/macOS-setup/setup.bash`, you should do the following to be done with the setup of your system.

### macOS

1. open Rectangle's preferences and make `^ + ⌥ + \` the shortcut for *Almost Maximize* and tick on Launch at Login
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
