# Setting up a new Mac



The reason for me to use a markdown file instead of writing a setup script (which I tried) is because **some apps need permission to do things** and **it is extremely hard to find what commands you need in what domain** to edit settings. I am certain everything is possible with shell scripts, but it is too hard for me right now.



## Dotfiles

- clone [the repo](https://github.com/tristanlukens/dotfiles) into `$HOME`
	- running `git` will ask to download the xcode command line tools, you need these
- run the scripts in ./scripts (in this order!)
	- `links.sh`
	- `macOS-packages.sh`



## Wallpapers

- clone [the repo](https://github.com/tristanlukens/wallpapers) into `$HOME/Pictures`
- set one of the wallpapers using **Set Desktop Picture** in the right click menu



## Visual Studio Code

I use the built in Settings Sync.

- open Visual Studio Code
- press **⌘**+**,** to go to Settings
- press **Turn on Settings Sync**. Log in with GitHub
- restart Visual Studio Code



## Installing App Store apps

Install the following apps from the App Store.

- Trello
- Xcode
- 2048
- GarageBand
- iMovie
- WhatsApp Desktop
- optional: the iWork suite
- optional: the whole MS Office suite



## Fonts

I only install a couple of fonts, and all of the following fonts are on [Google Fonts](https://fonts.google.com).

- Roboto Mono
- Lilex
- DM Mono
- Poppins
- Montserrat
- Sue Ellen Francisco
- Open Sans
- Lora

In addition, I do use some other fonts, which are not on Google Fonts.

- [Cascadia Code](https://github.com/microsoft/cascadia-code)
- [Mohave](https://www.1001fonts.com/mohave-font.html)
- [SF + New York Fonts](https://developer.apple.com/fonts/) (macOS only, installed with .dmg)



## Tinkertool

For some preferences I like to use, you need Tinkertool. It is not in brew though, so install it via their website.



## macOS Preferences

*Note that these preferences are based of of macOS 11 Big Sur. I do not know if these settings will still work in future, or in older versions of macOS. They might be located somewhere different in other versions.*

### System Preferences

#### Dock

- Dock size: around $\frac{1}{4}$
- Magnification: around $\frac{1}{3}$. This needs to be turned on first.
- Dock hiding: ticked (this can be done is System Preferences but also in the dock itself, at the line)
- Show recent applications in Dock: unticked

#### Control Centre

- Show the following Control Centre items in the Menu Bar (I don't know which ones are on by default)
	- WiFi
	- Bluetooth
	- Keyboard Brightness
	- Screen Mirroring (when active)
	- Display (when active)
	- Sound (always)
	- Now Playing (when active)
	- Battery (all boxes ticked)
	- Time Machine
	- *I think I left the Clock on its defaults*

#### Mission Control

- Displays have seperate Spaces: ticked

#### Internet Accounts

iCloud should sync all accounts by default, but I think you need to activate them.

#### Users & Groups

Change the profile picture to bike.png (located on the NAS (and probably somewhere else too)).

#### Security & Privacy

Apps will ask for permissions when they need them. Give them permissions when they ask for them.

#### Keyboard

I think I left everything default, but there might be something.

- Turn keyboard backlight off after **10 secs** of inactivity

> When playing Minecraft, turning on the **Use F1, F2, etc. keys as standard function keys** is recommended

#### Trackpad

I have no idea if I edited these settings.

#### Mouse

With the mouse I am currently using, I have the following settings.

- Scroll direction: Natural: ticked
- Tracking speed: 3/10
- Scrolling speed: 4/8

I think I left the rest at their defaults.

#### Displays

Play around with the alignment of the displays if multiple displays are used.

#### Sidecar

Untick all boxes at the right half of the screen.

### Tinkertool

#### Finder

*Tick the following boxes.*

- Show hidden and system Files
- Show selected path in window title

#### Dock

*Tick the following boxes.*

- Use dimmed icons for hidden applications
- Disable delay when showing hidden Dock
- Don't allow to change its size manually
- Don't allow to modify content (order the dock first)
	- dock order: [Finder, Launchpad, Spotify, Safari, Find My, Messages, Mail, Discord, Firefox, Chrome :(, Visual Studio Code, Xcode, GitHub Desktop, Alacritty, Typora, GarageBand, iMovie, Minecraft, Barrier, Time Machine, System Preferences, Trello | Desktop, Downloads, Documents, Applications, Pictures]
- Highlight selection when using grid view
- Use scroll wheel or scroll gesture to access contents

#### General

Screenshot destination folder: `$HOME/Pictures`



## App-specific preferences (⌘+, menu)

### Finder

- tick all boxes for showing items on the desktop **in General**
- New Finder windows show: `$HOME` **in General**
- Turn off all tags in sidebar **in Tags**
- Untick the following items **in Sidebar**. All else needs to be ticked
	- Recents
	- Recent Tags
- Show all filename extensions: ticked
- Keep folders on top: both ticked
- When performing a search: Search the Current Folder
- If MagicaVoxel is installed, put its folder in the sidebar.
- If Minecraft is installed, put its folder in the sidebar.

#### Finder Desktop preferences

- Turn on Stacks
- Stack By Kind
- Sort By Name

### Safari

- Homepage: https://duckduckgo.com **in General**
- Search engine: DuckDuckGo **in Search**
- Show full website address: ticked **in Advanced**
- show everything on startpage
- edit the background image on startpage, choose one of the wallpapers from the repo

### Firefox

- Default Search Engine: DuckDuckGo **in Search**

#### Extensions

- WhatFont



## `defaults` command only settings

### Finder

- change the default view to list: `defaults write com.apple.finder FXPreferredViewStyle -string Nlsv`
- show absolute path in window title: `defaults write com.apple.finder _FXShowPosixPathInTitle -bool true`
- show hidden files by default: `defaults write com.apple.finder AppleShowAllFiles -bool true`
