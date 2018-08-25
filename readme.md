#My Vim Configuration

##Introduction

This vimrc file started off with just basic features and preferences that I wished to include in my vim usage. Over time, I have added support for extension managers and other plugins, such as NERDTree.

##Installation

1) Clone this repo into a local folder (I have mine saved a `.vim-config` folder in my home directory)

`$ git clone https://github.com/wfa207/vimrc.git ~/.vim-config`

2) Create a symbolic link from where you cloned this repo to the `.vimrc` file in your home directory (the example below assumes you are running bash on OS X)

`$ ln -s ~/.vim-config/.vimrc ~/.vimrc`
`$ ln -s ~/.vim-config/.ackrc ~/.ackrc`

3) Install Plugins by running `:PluginInstall` in Vim

##Currently Used Plugins
- Vundle
- NERDTree
- NERDCommenter
- Vim Multiple Cursors
- IndentPython
- YouCompleteMe
- Syntastic
- CtrlP
- Airline

###[Vundle](https://github.com/VundleVim/Vundle.vim)

Extension manager, based on Pathogen, for Vim that ensures all plugins and runtime files have their own private directories.

###[NERDTree](https://github.com/scrooloose/nerdtree)

Plugin that provides a way for us to explore the file system visually and open files and directories accordingly.

###[NERDCommenter](https://github.com/scrooloose/nerdcommenter)

Plugin that provides easier commenting in Vim with hotkeys

###[Vim Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)

Plugin that mimics Sublime Text's multiple selection functionality, providing an easy way to refactor code that contains common naming conventions

###[IndentPython](https://github.com/vim-scripts/indentpython.vim)

Plugin that corrects for Vim's native autoindent feature

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
###[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

Python autocomplete plugin built on top of jedi

>>>>>>> ad535ea... * Re-enable YouCompleteMe for drop-down suggestions
###[Syntastic](https://github.com/vim-syntastic/syntastic)

A popular syntax checker

###[CtrlP](https://github.com/ctrlpvim/ctrlp.vim)

A fuzzy search plugin that can search through files, buffers, etc.

###[Ack](https://github.com/mileszs/ack.vim)

Plugin that allows users to run their favorite search tools in Vim

<<<<<<< HEAD
=======
>>>>>>> parent of a45d8d6... * Removed YouCompleteMe options from vimrc
>>>>>>> ad535ea... * Re-enable YouCompleteMe for drop-down suggestions
###[Supertab](https://github.com/ervandew/supertab)

Plugin that allows users to use <Tab> for all autocompletion / insertion needs

###[UltiSnips](https://github.com/SirVer/ultisnips)

Plugin that provides Vim with snippet functionality

###[Vim_Snippets](https://github.com/honza/vim-snippets)

A repository that contains commonly-used snippets for multiple languages

###[Vim_Tmux_Navigator](https://github.com/christoomey/vim-tmux-navigator)

Plugin that remaps hotkeys for navigation between panes in Tmux

###[Airline](https://github.com/vim-airline/vim-airline)

Updates the status bar to be more informative (git info / encoding, etc.)
