# scripts

The scripts to set up a new computer. They're all in `bash`, so even if you're not using `zsh` (I am though) you should be good. `zsh` will be installed during the process though.

## Order

You'll want to execute the scripts in the following order. If everything executes correctly, you'll be good.

1. `brew.bash`
2. `npm.bash`
3. `links.bash`
4. `wallpapers.bash`

## The scripts

### `brew.bash`

This will run `xcode-select --install` if you're on Darwin, install `brew`, then install all packages I want.

### `npm.bash`

This will install the `npm` pacakges I want regardless of what I'm doing. Since this is designed to be run after `brew.bash`, it doesn't install `npm` itself. If you want to run this first, don't want to use `brew` or have another reason not to automatically install `npm`, you have to have manually install it first.

### `links.bash`

Creates symlinks for every config file I need using `ln -s`. It doesn't use `$XDG_DATA_HOME` yet though.

### `wallpapers.bash`

Clones my wallpapers GitHub repo into `$HOME/Pictures/wallpapers` (you don't have to have that folder yet!).

## One-liner

If you live dangerously and want to exeucte the setup in one whole command, use this line.

`./brew.bash && ./npm.bash && ./links.bash && ./wallpapers.bash`

The dangerous thing about this is that you won't know exactly where something went wrong. I'll create a `setup.bash` script though, which will do this thing safely.
