Liugj's Vim config
==================

I use [Vim-Plug](https://github.com/junegunn/vim-plug/blob/master/README.md) to manage my plugins, which makes my `.vim` directory clean and tidy

## Installation

1. Backup your old vim configuration files:

        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig

2. Clone and install this repo:

        git clone git://github.com/liugj/vimrc.git ~/.vim
        ln -s ~/.vim/.vimrc ~/.vimrc

3. Setup `Vim-Plug`:

        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

4. Install plugins. Launch vim(ignore the errors and they will disappear after installing needed plugins)and run:

        :PlugInstall

Thst's it!

## How to manage this vimrc?

All plugins are listed in file `plugin.vim` with detailed comments, just add plugins as you like.

### Commands

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unlisted plugins (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |

