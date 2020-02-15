Liugj's Vim config
==================

I use `Vim-Plug` to manage my plugins, which makes my `.vim` directory clean and tidy

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

All plugins are listed in file `bundles.vim` with detailed comments, just add plugins as you like.

1. `:PlugClean` to clean up unused plugins
2. `:PlugInstall` to install newly added plugins
3. `:PlugInstall!` to upgrade all plugins

Other configurations are also well organized in vimrc.
