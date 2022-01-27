" Switch syntax highlighting on, when the terminal has colors
syntax enable

" Use vim, not vi api
set nocompatible

" set the runtime path to include fzf
set rtp+=~/.fzf

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" Command history
set history=100

" Always show cursor
set ruler

" Show incomplete commands
set showcmd

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Ignore case in search
set smartcase

" Make sure any searches /searchPhrase doesn't need the \c escape character
set ignorecase

" A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window
" if you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer “a.txt”
set hidden

" Turn word wrap off
set nowrap

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Convert tabs to spaces
set expandtab

" Set tab size in spaces (this is for manual indenting)
set tabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" Enable auto indenting
set autoindent
set smartindent

" Turn on line numbers
set number
set relativenumber

" Highlight tailing whitespace
" See issue: https://github.com/Integralist/ProVim/issues/4
set list listchars=tab:\ \ ,trail:·

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Hide the toolbar
set guioptions-=T

" UTF encoding
set encoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Use system clipboard
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
set clipboard+=unnamed

" Don't show intro
set shortmess+=I

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Highlight the current line
set cursorline

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Use 24bit Colors
set termguicolors

" divider between panes
set fillchars+=vert:\┃

" set underline cursor for normal and visual
set guicursor=n-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150
set guicursor=v-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150
set guicursor=i-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150

" set textwidth to 80 characters
set textwidth=80

" show a column at line 80
set colorcolumn=80

" enable filetype plugins
filetype plugin indent on

" python3 executible
let g:python3_host_prog= "/sbin/python3"

" options for complete window
set completeopt=menu,menuone,noselect

" disable man mappings
let g:no_man_maps = v:true
