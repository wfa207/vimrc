" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
" This is required to be 'off' for Vundle, but is turned back on following the
" end of Vundle
filetype off
 
" When splitting windows, I prefer to have the new window towards the right /
" bottom (depending on how I choose to split) of the active window
set splitright
set splitbelow
" }}}
"------------------------------------------------------------
" Vundle / Plugins"{{{
"
" URL: https://github.com/VundleVim/Vundle.vim
" Author: Ryan L McIntyre (https://github.com/ryanoasis)
" Description: A plugin manager for vim that ensures all plugins and runtime
" files have their own private directories

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" Alternatively, we can pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Plugins must be kept between vundle#begin/end.
"
" ==========================
" Plugins on GitHub
" ==========================
" NERDTree: Explore file system visually as a tree
Plugin 'scrooloose/nerdtree'

" Vim_Multiple_Cursors: Enables Sublime Text-like multiple selection feature
Plugin 'terryma/vim-multiple-cursors'

" All plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"}}}
"------------------------------------------------------------
" NERDTree"{{{
"
" URL: https://github.com/scrooloose/nerdtree
" Author: Martin Grenfell (https://github.com/scrooloose)
" Description: NERDTree provides a way for us to explore the file system 
" visually and open files and directories accordingly.

" Automatically load NERDTree when vim starts up (no file specified)
au vimenter * NERDTree

" If NERDTree is the only window left, vim will automatically close
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"}}}
"------------------------------------------------------------
" Display"{{{
"
" Enable syntax highlighting
syntax on

" Set a marker to denote when a line should break (this is a mere suggestion
" though)
highlight ColorColumn ctermbg=2 guibg=#2c2d27
set colorcolumn=80

" By default, Vim detects *.md files as Modula-2 files; this line forces all
" *.md files to be read as markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" }}}
"------------------------------------------------------------
" Must have options {{{
"
" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
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
"------------------------------------------------------------
" Usability options {{{
"
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
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
" }}}
"------------------------------------------------------------
" Indentation options "{{{
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" set shiftwidth=4
" set softtabstop=4
" set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4
" }}}
"------------------------------------------------------------
" Mappings {{{

" Mapleader mapping -- determines what the leader is (until it is redefined)
" Note that we can effectively have 'cascading' leader mappings - i.e. certain
" sections of our mappings can use one leader, then we redefine the mapleader
" for subsequent sections

let mapleader=","

" Useful mappings
 
" Map <C-C> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <silent> <C-C> :nohl<CR><C-L><C-C>

" Window movement mappings

" Move cursor to window immediately adjacent to (hjkl control direction) active
" window
nnoremap <C-J> :wincmd j<CR>
nnoremap <C-K> :wincmd k<CR>
nnoremap <C-H> :wincmd h<CR>
nnoremap <C-L> :wincmd l<CR>

" Move window to furthest in the indicated direction (controlled by hjkl)
nnoremap <C-W><C-J> :wincmd J<CR>
nnoremap <C-W><C-K> :wincmd K<CR>
nnoremap <C-W><C-H> :wincmd H<CR>
nnoremap <C-W><C-L> :wincmd L<CR>

" Split window horizontally (native <C-W><C-S> not functioning properly)
nnoremap <C-W><C-E> :sp<CR>

" Close a window (similar to most other tabbed programs, but press ctrl+W
" twice)
nnoremap <C-W><C-W> :q<CR>

" Open a new tab
nnoremap <C-T> :tabnew<CR>

" Open .vimrc file in new window
nnoremap <Leader>ev :vs ~/.vim-config/.vimrc<CR>
nnoremap <Leader>sv :so ~/.vimrc<CR>

" Open .bashrc file in new window
nnoremap <Leader>eb :vs ~/.bashrc<CR>
nnoremap <Leader>sb :!. ~/.bashrc<CR>

" Install/update plugins via Vundle
nnoremap <Leader>vi :PluginInstall<CR>

" Toggle line numbers
nnoremap <Leader>3 :set invnumber<CR>

" =============================
" GitHub mappings
" =============================

" Add all files to git stage
nnoremap <Leader>ga :!git add -A<CR>

" Commit files (message must be entered)
nnoremap <Leader>gm :!git commit -m

" Push changes to github
nnoremap <Leader>gp :!git push<CR>
" =============================
" NERDTree mappings
" =============================

" Toggle NERDTree menu
map <Leader>b :NERDTreeToggle<CR>

" NERDTree split mappings are a bit counterintuitive (I decided to change them
" to v and s for vertical and horizontal split, respectively)
"let g:NERDTreeMapOpenSplit='s'
"let g:NERDTreeMapOpenVSplit='v'

" Unmap Jump to Sibling to prevent overriding of bindings above
let g:NERDTreeMapJumpNextSibling=''
let g:NERDTreeMapJumpPrevSibling=''

" }}}
"------------------------------------------------------------
