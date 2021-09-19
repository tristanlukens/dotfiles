# dotfiles
**my dotfiles**



## notes
To make EVERYTING work exactly how I want it, you need the SF fonts (by apple, so not for linux). I will probably fix
this by moving to another font entirely.



## items
- vim/neovim config
- zshrc
- gitconfig
- vscode settings.json
- alacritty
- rectangle



## todo
- make README more verbose
- set up nvim for go and c(++)
- change the way to track the Rectangle, Amethyst and macOS preferences: make shell script which edits plists and executes when `git pull` is done AND when the directory is dotfiles. is a little bit broken
    though, because you can do `git pull [directory]` but I'm not sure on that one
- move to another font (which is for linux too)
- write a markdown file which shows how to setup a new mac (mainly macOS' own preferences and macOS-only apps which use plists to configure themselves). USE TINKERTOOl



### long-term todos
- move to amethyst or create some kind of wm myself. another option is making shortcuts (skhd?) or scripts (applescript? lua?) to manage windows
- make a shell script which uses the `defaults` automatically command to set macOS preferences, it's a pain in the ass
    but shit will be synced. look at tinkertool for "hidden" settings and look up how to apply them. one annoying thing is that you can't
    do set up finder's sidebar with this, because it isn't managed with a plist, but rather a weird format which you cannot edit


:octocat:
