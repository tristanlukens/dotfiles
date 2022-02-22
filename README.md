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
- tmux
- setup scripts

There's individual READMEs everything but git, since it doesn't need much explaining It does however have its own folder.

## Post-setup steps

After you've set up your installation with `$DOTS/setup-scripts/setup.bash`, you should do the following to be done with the setup of your system.

### macOS

1. go to `$HOME/Pictures/wallpapers` (where `wallpapers.bash` installs my wallpapers by default) and select a wallpaper, right click and select "Set Desktop Picture", which may or may not be under Services
2. use Spotlight (⌘ + Space) to open Rectangle, which will provide instructions for installations. When you're done with that, turn on Launch on Login and set Almost Maximize option to `^ + ⌥ + \` in Rectangle's Preferences menu
3. use Spotlight to open Brewlet and set Check for updates every to 1 hour. Then, tick off Share Analytics. The correct Homebrew Location should be selected, but if it's not, take care of that
4. use Spotlight to open iTerm and execute the do following:
  - (before opening iTerm, but it doesn't really matter) press ⌘ + Shift + D to turn on Dock Hiding
  - `defaults write com.apple.dock autohide-delay -float 0 && killall Dock`
    This will get rid of the stupid delay of the dock showing when Dock Hiding is on. You can return to the default one by running
    `defaults delete com.apple.Dock autohide-delay && killall Dock`
5. use Spotlight to open System Preferences and adjust macOS's preferences to your liking
6. add the Desktop, Downloads, Documents, Applications, Pictures and Movies folders to the right side of the dock with
  - Display as Folder
  - View content as Grid
  I like to sort all of them by Date Added, but with the Applications this is set to Name
7. go into Finder Preferences and select tick all of the boxes to show everything on the Desktop. A new Finder window should show $HOME. Turn off all tags, and show everything but Recents and Recent Tags in the sidebar. Also, tick on Show All Filename Extensions and both Keep Folders on top boxes
8. go into Safari and select Seperate tabs. Make the default search engine DuckDuckGo. Additionally, tick on Show full website address and Show Develop in menu bar
9. go into Firefox preferences and make the DuckDuckGo the default search engine

The rest (things like logging into apps etc) should come to you while you're using the OS. These are the most important things.
