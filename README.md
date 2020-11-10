# Dotfiles

These are my personal dotfiles.

## Installation
copy all source code from this repository and put it in the following directory
```sh
~/.dotfiles
```

After downloading, you should run the `install.sh` script. This script will install [ohmyzsh](https://ohmyz.sh) and copy the .zshrc file to `~/.zshrc`.

Now your installation is complete.

## Usage
The install script only adds [ohmyzsh](https://ohmyz.sh) to your system. By doing so a new command is available: `dot`
```sh
Usage: dot <command>

Commands:
   macos            Apply macOS system defaults
   dock             Apply macOS Dock settings
   brew             Install brew and all it's dependencies
   zsh              Copy the zsh configuration and reload
   edit             Open dotfiles in your favorite IDE
   help             Display this help message
```

This command should be used to install all the preferences.
