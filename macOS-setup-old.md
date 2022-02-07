# Setting up a new Mac



The reason for me to use a markdown file instead of writing a setup script (which I tried) is because **some apps need permission to do things** and **it is extremely hard to find what commands you need in what domain** (defaults command) to edit settings. I am certain everything is possible with shell scripts, but it is too hard for me right now.



*Note that this setup is based on macOS 11 Big Sur. I do not know if this setup will still work in future, or in older versions of macOS. Things might be located somewhere different in other versions.*



This setup is far from complete. If I'm using a Mac and see a preference to change, I will.



### Time Machine

Make a Time Machine backup if possible.



## Updates

First check if the whole system is up-to-date.



## Dotfiles

- clone [the repo](https://github.com/tristanlukens/dotfiles) into `$HOME`
	- running `git` will ask to download the xcode command line tools, you need these
- run the scripts in ./scripts (in this order!)
	- `links.sh`
	- `macOS-packages.sh`



## Hushlogin

Run `touch .hushlogin` is in `$HOME`. This will suppress the last login message in the terminal.



## Wallpapers

- clone [the repo](https://github.com/tristanlukens/wallpapers) into `$HOME/Pictures`
- set one of the wallpapers using **Set Desktop Picture** in the right click menu
- add `$HOME/Pictures/wallpapers` to System Preferences in Desktop & Screen Saver by pressing the + button



## Visual Studio Code

I use (built in) Settings Sync.

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
- Speedtest
- optional: the iWork suite
- optional: the whole MS Office suite



Apps to be installed via the App Store if not installed with `brew`:

- Boop
- CotEditor



## Fonts

I only install a couple of fonts, and all of the following fonts are on [Google Fonts](https://fonts.google.com).

- Roboto Mono
- Inter
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
- [Lilex](https://github.com/mishamyrt/Lilex)



## macOS Preferences

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

#### Bluetooth

Show Bluetooth in menu bar: **ticked**

#### Sound

Show volume in menu bar: **ticked**

#### Printers & Scanners

Add these if needed

#### Keyboard

I think I left everything default, but there might be something.

- Turn keyboard backlight off after **10 secs** of inactivity **in Keyboard**
- I don't always use the following settings, but they're good to know of. Defaults are also good
	- Key Repeat: $\frac{8}{8}$
	- Delay Until Repeat: $\frac{6}{6}$

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
	- AirDrop (maybe)
	- Recent Tags
- Show all filename extensions: ticked
- Keep folders on top: both ticked
- When performing a search: Search the Current Folder
- ⌘+/ to show statusbar
- Put `$HOME$` at the top of the sidebar
- If MagicaVoxel is installed, put its folder in the sidebar.
- If Minecraft is installed, put its folder in the sidebar.

#### Finder Desktop preferences

- Turn on Stacks
- Stack By Kind
- Sort By Name
- On the right side of the dock (after the line), in the Downloads, Documents etc folders, click the following
	- Sort by Date Added (for Applications, leave it on Sort by Name)
	- DIsplay as Folder
	- View content as Grid

### Safari

- Homepage: https://duckduckgo.com **in General**
- Search engine: DuckDuckGo **in Search**
- Show full website address: ticked **in Advanced**
- Show Develop menu in menu bar: ticked **in Advanced **
- show everything on startpage
- edit the background image on startpage, choose one of the wallpapers from the repo

### Firefox

- Default Search Engine: DuckDuckGo **in Search**

#### Extensions

- WhatFont

### Brewlet

Open brewlet, and go to Preferences. Change the following.

- Include dependency updates: ticked
- Share Analytics: unticked
- open at login needs to be on:
	- turn off Don't allow to modify content in Dock in TinkerTool
	- put Brewlet in Dock
	- click right click > Options > Open at Login
	- turn on Don't allow to modify content in Dock in TinkerTool

### Messages

- Enable Messages in iCloud: ticked **in iMessage**. After that, press Sync Now

### Typora

- change the size of the window a bit and center the window, this will be persistent
- Send Anonymous Usage Info: unticked **in General**
- Theme: Github **in Appearance**
- When insert: Copy image to current folder (./) **in Image**
- Auto pair common Markdown syntax: ticked
- Syntax support: *tick all*
- zoom out to 90%



## `defaults` command only settings

### Finder

- change the default view to *List*: `defaults write com.apple.finder FXPreferredViewStyle -string Nlsv`
- show absolute path in window title: `defaults write com.apple.finder _FXShowPosixPathInTitle -bool true`
- show hidden files by default: `defaults write com.apple.finder AppleShowAllFiles -bool true`

### Visual Studio Code

- when a key is held down, hold it down like in other OSs instead of showing accents etc for the letter: `defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false`

### Sublime Text

- when a key is held down, hold it down like in other OSs instead of showing accents etc for the letter: `defaults write com.sublimetext.4 ApplePressAndHoldEnabled -bool false`
