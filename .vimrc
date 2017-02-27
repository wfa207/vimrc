" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

" -----------------------------------------------------------
" Features {{{
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Mapleader mapping -- determines what the leader is (until it is redefined)
" Note that we can effectively have 'cascading' leader mappings - i.e. certain
" sections of our mappings can use one leader, then we redefine the mapleader
" for subsequent sections

let mapleader=","

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
" This is required to be 'off' for Vundle, but is turned back on after Vundle
" finishes running
filetype off

" When splitting windows, I prefer to have the new window towards the right /
" bottom (depending on how I choose to split) of the active window
set splitright
set splitbelow
" }}}
" -----------------------------------------------------------
" Vundle"{{{

" URL: https://github.com/VundleVim/Vundle.vim
" Author: Ryan L McIntyre (https://github.com/ryanoasis)
" Description: A plugin manager for vim that ensures all plugins and runtime
" 			   files have their own private directories

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alternatively, we can pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Plugins must be kept between vundle#begin/end.

" ==========================
" Plugins on GitHub
" ==========================
" NERDTree: Explore file system visually as a tree
Plugin 'scrooloose/nerdtree'

" NERDCommenter: Allows for easy commenting in Vim
Plugin 'scrooloose/nerdcommenter'

" Vim_Multiple_Cursors: Enables Sublime Text-like multiple selection feature
Plugin 'terryma/vim-multiple-cursors'

" IndentPython: Corrects for Vim's native autoindent feature
Plugin 'vim-scripts/indentpython.vim'

" YouCompleteMe: Python autocomplete feature built on top of jedi
Plugin 'Valloric/YouCompleteMe'

" Syntastic: A popular syntax checker
Plugin 'scrooloose/syntastic'

" CtrlP: Full-path fuzzy file, buffer, mru, tab... finder for Vim
Plugin 'ctrlpvim/ctrlp.vim'

" Ack: File-search plugin for Vim
Plugin 'mileszs/ack.vim'

" Supertab: Supertab is a vim plugin which allows you to use <Tab> for all
" your insert completion needs
Plugin 'ervandew/supertab'

" UltiSnips: Allows usage of snippets in Vim
Plugin 'SirVer/ultisnips'

" Vim_Snippets: Collection of snippets (used with UltiSnips)
Plugin 'honza/vim-snippets'

" Vim_Tmux_Navigator: Easier navigation between Vim and Tmux (without prefix)
Plugin 'christoomey/vim-tmux-navigator'

" Airline: A more informative status bar (current venv, git branch, etc.)
Plugin 'vim-airline/vim-airline'

" Airline_themes: Themes for the Airline plugin
Plugin 'vim-airline/vim-airline-themes'

" Solarized_Theme: Theme developed by Ethan Schoonover
Plugin 'altercation/vim-colors-solarized'

" All plugins must be added before the following line
call vundle#end()					" Required
filetype plugin indent on			" Required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"}}}
" -----------------------------------------------------------
" NERDTree"{{{

" URL: https://github.com/scrooloose/nerdtree
" Author: Martin Grenfell (https://github.com/scrooloose)
" Description: NERDTree provides a way for us to explore the file system
" 			   visually and open files and directories accordingly.

" Start NERDTree automatically when vim starts up with no files specified
au StdinReadPre * let s:std_in=1
au VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Start NERDTree automatically when vim starts up on a directory
au StdinReadPre * let s:std_in=1
au VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" If NERDTree is the only window left, vim will automatically close
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Have NERDTree show hidden files by default
let NERDTreeShowHidden=1
"
" Toggle NERDTree menu
map <Leader>b :NERDTreeToggle<CR>

" NERDTree split mappings are a bit counterintuitive (I decided to change them
" to v and s for vertical and horizontal split, respectively)
let g:NERDTreeMapOpenSplit='h'
let g:NERDTreeMapOpenVSplit='v'

" Unmap Jump to Sibling to prevent overriding of bindings above
let g:NERDTreeMapJumpNextSibling=''
let g:NERDTreeMapJumpPrevSibling=''
"}}}
" -----------------------------------------------------------
" NERDCommenter"{{{

" URL: https://github.com/scrooloose/nerdcommenter
" Author: Martin Grenfell (https://github.com/scrooloose)
" Description: NERDCommenter provides automatic commenting capabilities in Vim

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Toggle comment
map <Leader>  <plug>NERDCommenterToggle
"}}}
" -----------------------------------------------------------
" YouCompleteMe"{{{

" URL: https://github.com/Valloric/YouCompleteMe
" Author: Val Markovic (https://github.com/Valloric)
" Description: Fuzzy-search code completion engine for Vim. Python
" 			   functionality is built-in; other languages are available but
" 			   require plugins

" Ensure autocomplete window disappears once it is no longer in use
let g:ycm_autoclose_preview_window_after_completion=1

" By default, VIM and YouCompleteMe are not aware of the virtualenv; the
" following code detects if a virtualenv is running and switches to the active
" virtualenv with the correct system path so YouCompleteMe finds the right site
" packages
py << EOF
import os
import sys

if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

" Mapping for GoTo Definition
map <Leader>gd  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Select next completion
let g:ycm_key_list_select_completion = ['<C-J>', '<Down>']

" Select previous completion
let g:ycm_key_list_previous_completion = ['<C-K>', '<Up>']
"}}}
" -----------------------------------------------------------
" Syntastic"{{{

" URL: https://github.com/vim-syntastic/syntastic
" Author: Martin Grenfell (https://github.com/scrooloose)
" Description: Syntax checker plugin

" Default settings recommended by syntastic contributors
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_loc_list_height=5
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"}}}
" -----------------------------------------------------------
" Ctrl-P"{{{

" URL: https://github.com/ctrlpvim/ctrlp.vim
" Author: kien (https://github.com/kien)
" Description: Full path fuzzy file, buffer, mru, tag, ... finder for Vim

let g:ctrlp_show_hidden = 1

"}}}
" -----------------------------------------------------------
" Ack / Silver Searcher"{{{

" URL: https://github.com/mileszs/ack.vim
" Author: Miles Z. Sterrett (https://github.com/mileszs)
" Description: Allows users to run their favorite search tool from Vim,
" 			   with an enhanced results list

if executable('ag')
	let g:ackprg='ag --vimgrep'
endif

" Shortcut to access Ack; trailing space needed
nnoremap <Leader>fa :Ack 
" }}}
" -----------------------------------------------------------
" SuperTab"{{{

" URL: https://github.com/ervandew/supertab
" Author: Eric Van Dewoestine (https://github.com/ervandew)
" Description: Supertab is a vim plugin which allows you to use <Tab> for all
"			   your insert completion needs

" Supertab's default completion selection should be YouCompleteMe's
let g:SuperTabDefaultCompletionType = '<C-J>'
"}}}
" -----------------------------------------------------------
" UltiSnips"{{{

" URL: https://github.com/SirVer/ultisnips
" Author: Holger Rapp (https://github.com/SirVer)
" Description: UltiSnips provides snippets in Vim

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
"}}}
" -----------------------------------------------------------
" Vim Multiple Cursor"{{{

let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0
" }}}
" -----------------------------------------------------------
" Display"{{{

" Colorscheme
set background=dark
colorscheme solarized

" =============================
" Airline Configuration
" =============================

" Enable Powerline fonts for more aesthetic appearance
let g:airline_powerline_fonts=1

" Smarter tab line allows for display of buffers
let g:airline#extensions#tabline#enabled=1

" Allow space after tabs but no in between them
let g:airline#extensions#whitespace#mixed_indent_algo=1

" Airline theme
let g:airline_theme='solarized'

" Enable better syntax highlighting for Python
let python_highlight_all=1

" Enable syntax highlighting
syntax on

" Set a marker to denote when a line should break (see textwidth setting)
highlight ColorColumn ctermbg=23 guibg=#005f5f
set colorcolumn=80

" Highlight line that the cursor is currently on
set cursorline

" Flag excess whitespace
highlight ExtraWhitespace ctermbg=190 guibg=#dfff00
match ExtraWhitespace /\s\+$/

" By default, Vim detects *.md files as Modula-2 files; this line forces all
" *.md files to be read as markdown
au BufNewFile,BufRead *.md set filetype=markdown
" }}}
" -----------------------------------------------------------
" Must-Have Options {{{

" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.

" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" Note that the confirm option is also listed below in the "Useability
" options" section
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Search as you type
set incsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

" Foldmethod controls how lines are folded in vim. Currently, we are setting
" the foldmethod to marker, which gives us a way of sharing our code folds
" with others
set foldmethod=marker
" }}}
" -----------------------------------------------------------
" Usability options {{{

" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout timeoutlen=1000 ttimeoutlen=200

" Have Vim share its clipboard with the system clipboard
set clipboard=unnamed

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
" }}}
" -----------------------------------------------------------
" Indentation Options "{{{

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide for all files, unless otherwise specified
set encoding=utf-8
set shiftwidth=4
set textwidth=79
set tabstop=4
set softtabstop=4
set autoindent

" Indentation options for js, html, and css files
au BufNewFile,BufRead *.js, *.html, *.css
			\ set tabstop=2
			\ set softtabstop=2
			\ set shiftwidth=2

" Indentation options for python files
au BufNewFile,BufRead *.py
			\ set textwidth=139
" }}}
" -----------------------------------------------------------
" Mappings {{{

" =============================
" Quick Access Files
" =============================
"
" Open .vimrc file in new window
nnoremap <Leader>ev :vs ~/.vimrc<CR>
nnoremap <Leader>sv :so ~/.vimrc<CR>

" Open .bashrc file in new window
nnoremap <Leader>eb :vs ~/.bashrc<CR>
nnoremap <Leader>sb :!. ~/.bashrc<CR>

" Open .tmux.conf file in new window
nnoremap <Leader>et :vs ~/.tmux.conf<CR>
nnoremap <Leader>st :so ~/.tmux.conf<CR>

" =============================
" Useful mappings
" =============================

" Map <C-C> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <silent> <C-C> :nohl<CR><C-L><C-C>

" Close a window (similar to most other tabbed programs, but press ctrl+W
" twice)
nnoremap <C-W><C-W> :q<CR>

" Open a new tab
nnoremap <C-T> :tabnew<CR>

" Install plugins via Vundle
nnoremap <Leader>vi :PluginInstall<CR>

" Update plugins via Vundle
nnoremap <Leader>vu :PluginUpdate<CR>

" Toggle line numbers
nnoremap <Leader>3 :set invnumber<CR>

" Ensure Enter inserts new line
imap <CR> <CR>

" =============================
" GitHub mappings
" =============================

" Add all files to git stage
nnoremap <Leader>ga :!git add -A<CR>

" Commit files (message must be entered)
nnoremap <Leader>gm :!git commit -m

" Push changes to github
nnoremap <Leader>gp :!git push<CR>
" }}}
" -----------------------------------------------------------
