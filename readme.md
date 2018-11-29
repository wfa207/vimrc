# My Vim Configuration

## Introduction

The included vimrc and install script should be enough to get you up and running on most machines, though you may have to tweak some of the language if you're **not** working on a Mac.

## Installation

1) Clone this repo into a local folder (I have mine saved a `.vim-config` folder in my home directory)

```bash
$ git clone https://github.com/wfa207/vimrc.git ~/.vim-config
```

2) Run the bash setup script to install external libraries (i.e. Jedi, pyls, etc.):

```bash
$ cd vim-config
$ . install.sh
```

## Configuration

There are a few configuration items that have to be buttoned up before Vim is ready to be used and integrated across your environment. First, check if your version of Vim has the +clipboard option, by running `$ vim --version`. If it isn't enabled, then you'll have to install the latest version of Vim; you can do this by running `$ brew install vim` (brew should install vim with the `+clipboard` option enabled):

Note: It may be smart to add the `--with-client-server` option, which supports X11 clipboard, allowing you to copy to the system clipboard even [when ssh'd into a machine](http://www.markcampbell.me/2016/04/12/setting-up-yank-to-clipboard-on-a-mac-with-vim.html). Homebrew doesn't enable this by default, and I haven't yet looked into adding this in this repo.

## Currently Used Plugins

### [Vim-Plug](https://github.com/junegunn/vim-plug)

Extension manager, based on Pathogen, for Vim that ensures all plugins and runtime files have their own private directories.

### [NERDTree](https://github.com/scrooloose/nerdtree)

Plugin that provides a way for us to explore the file system visually and open files and directories accordingly.

### [NERDCommenter](https://github.com/scrooloose/nerdcommenter)

Plugin that provides easier commenting in Vim with hotkeys

### [Vim Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)

Plugin that mimics Sublime Text's multiple selection functionality, providing an easy way to refactor code that contains common naming conventions

### [IndentPython](https://github.com/vim-scripts/indentpython.vim)

Plugin that corrects for Vim's native autoindent feature

### [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

Python autocomplete plugin built on top of jedi

### [Ale](w0rp/ale)

Asynchronous linter that can also be used for code introspection

### [FZF](junegunn/fzf)

Fuzzy search that operates asynchronously

### [Async Run](skywind3000/asyncrun.vim)

Plugin that allows user to run scripts asynchronously in Vim

### [Supertab](https://github.com/ervandew/supertab)

Plugin that allows users to use <Tab> for all autocompletion / insertion needs

### [UltiSnips](https://github.com/SirVer/ultisnips)

Plugin that provides Vim with snippet functionality

### [Vim Snippets](https://github.com/honza/vim-snippets)

A repository that contains commonly-used snippets for multiple languages

### [Vim Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator)

Plugin that remaps hotkeys for navigation between panes in Tmux

### [Vim Fugitive](https://github.com/tpope/vim-fugitive)

Git integration in Vim environment

### [Airline](https://github.com/vim-airline/vim-airline)

Updates the status bar to be more informative (git info / encoding, etc.)

### [SimpylFold](https://github.com/tmhedberg/SimpylFold)

Plugin that aids with smarter code folding

### [Vim Flake8](https://github.com/nvie/vim-flake8)

Integrate flake8 with Vim

### [Javascript Vim](https://github.com/pangloss/vim-javascript)

Javascript syntax highlighting for Vim

### [Vim JSX](https://github.com/mxw/vim-jsx)

JSX syntax highlighting for Vim

### [Emmet VIM](https://github.com/mattn/emmet-vim)

JSX snippet generation

### [Editorconfig](https://github.com/editorconfig/editorconfig-vim)

Plugin that allows user to define local rules that vim will acknowledge

### [SCSS Syntax](https://github.com/cakebaker/scss-syntax.vim)

SCSS Syntax highlighting

### [Vimux](https://github.com/benmills/vimux)

Interact with Tmux from Vim
