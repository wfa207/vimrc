#My Vim Configuration

##Introduction

This vimrc file started off with just basic features and preferences that I wished to include in my vim usage. Over time, I have added support for extension managers and other plugins, such as NERDTree.

##Installation

1) Clone this repo into a local folder (I have mine saved a `.vim-config` folder in my home directory)

:`$ git clone https://github.com/wfa207/vimrc.git ~/.vim-config`

2) Create a symbolic link from where you cloned this repo to the `.vimrc` file in your home directory (the example below assumes you are running bash on OS X)

:`$ ln -s ~/.vim-config/.vimrc ~/.vimrc`

##Currently Used Plugins
- Vundle
- NERDTree
- Vim Multiple Cursors

###Vundle

Vundle is an extension manager, based on Pathogen, for vim that ensures all plugins and runtime files have their own private directories.

###NERDTree

NERDTree provides a way for us to explore the file system visually and open files and directories accordingly.

###Vim Multiple Cursors

Vim Multiple Cursors mimics Sublime Text's multiple selection functionality, providing an easy way to refactor code that contains common naming conventions

