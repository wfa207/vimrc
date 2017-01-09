#My Vim Configuration

##Introduction

This vimrc file started off with just basic features and preferences that I wished to include in my vim usage. Over time, I have added support for extension managers and other plugins, such as NERDTree.

##Installation

1) Clone this repo into a local folder (I have mine saved a `.vim-config` folder in my home directory)

`$ git clone https://github.com/wfa207/vimrc.git ~/.vim-config`

2) Create a symbolic link from where you cloned this repo to the `.vimrc` file in your home directory (the example below assumes you are running bash on OS X)

`$ ln -s ~/.vim-config/.vimrc ~/.vimrc`

3) Install Plugins by running `:PluginInstall` in Vim

##Currently Used Plugins
- Vundle
- NERDTree
- Vim Multiple Cursors
- IndentPython
- YouCompleteMe
- Syntastic
- CtrlP
- Airline

###[Vundle](https://github.com/VundleVim/Vundle.vim)

Vundle is an extension manager, based on Pathogen, for vim that ensures all plugins and runtime files have their own private directories.

###[NERDTree](https://github.com/scrooloose/nerdtree)

NERDTree provides a way for us to explore the file system visually and open files and directories accordingly.

###[Vim Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)

Vim Multiple Cursors mimics Sublime Text's multiple selection functionality, providing an easy way to refactor code that contains common naming conventions

###[IndentPython](https://github.com/vim-scripts/indentpython.vim)

Corrects for Vim's native autoindent feature

###[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

Python autocomplete feature built on top of jedi

###[Syntastic](https://github.com/vim-syntastic/syntastic)

A popular syntax checker

###[CtrlP](https://github.com/ctrlpvim/ctrlp.vim)

A fuzzy search plugin that can search through files, buffers, etc.

###[Airline](https://github.com/vim-airline/vim-airline)

Updates the status bar to be more informative (git info / encoding, etc.)
