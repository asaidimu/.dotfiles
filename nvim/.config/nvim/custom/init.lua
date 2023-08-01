-- disable man mappings
vim.g.no_man_maps = true

-- map leader key to '
vim.g.mapleader = "'"

-- No backup files
vim.cmd("set nobackup")

-- No write backup
vim.cmd("set nowritebackup")

--  No swap file
vim.cmd("set noswapfile")

--  Command history
vim.cmd("set history=100")

--  Always show cursor
vim.cmd("set ruler")

--  Show incomplete commands
vim.cmd("set showcmd")

--  Incremental searching (search as you type)
vim.cmd("set incsearch")

--  Highlight search matches
vim.cmd("set hlsearch")

-- Ignore case in search
vim.cmd("set smartcase")

--  Make sure any searches /searchPhrase doesn't need the \c escape character
vim.cmd("set ignorecase")

--  A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window. if you try and quit Vim while there are hidden buffers, you will raise an error:
vim.cmd("set hidden")

--  Turn word wrap off
vim.cmd("set nowrap")

--  Allow backspace to delete end of line, indent and start of line characters
vim.cmd("set backspace=indent,eol,start")

--  Convert tabs to spaces
vim.cmd("set expandtab")

-- set textwidth to 80 characters
vim.cmd("set textwidth=80")

--  show a column at line 80
vim.cmd("set colorcolumn=80")

--  enable filetype plugins
vim.cmd("filetype plugin indent on")

-- Highlight the current line
vim.cmd("set cursorline")

--  Ensure Vim doesn't beep at you every time you make a mistype
vim.cmd("set visualbell")

--  Visual autocomplete for command menu (e.g. :e ~/path/to/file)
vim.cmd("set wildmenu")

--  redraw only when we need to (i.e. don't redraw when executing a macro)
vim.cmd("set lazyredraw")

--  highlight a matching [{()}] when cursor is placed on start/end character
vim.cmd("set showmatch")

--  Use 24bit Colors
vim.cmd("set termguicolors")

--  divider between panes
vim.cmd("set fillchars+=vert:\\┃")

--  set underline cursor for normal and visual
vim.cmd("set guicursor=n-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150")
vim.cmd("set guicursor=v-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150")
vim.cmd("set guicursor=i-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150")


-- Set tab size in spaces (this is for manual indenting)
vim.cmd("set tabstop=4")

--  The number of spaces inserted for a tab (used for auto indenting)
vim.cmd("set shiftwidth=4")

--  Enable auto indenting
vim.cmd("set autoindent")
vim.cmd("set smartindent")

-- Turn on line numbers
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Highlight tailing whitespace
vim.cmd("set list listchars=tab:\\ \\ ,trail:·")

-- Get rid of the delay when pressing O (for example)
vim.cmd("set timeout timeoutlen=1000 ttimeoutlen=100")

-- Always show status bar
vim.cmd("set laststatus=2")

--  Hide the toolbar
vim.cmd("set guioptions-=T")

--  UTF encoding
vim.cmd("set encoding=utf-8")

--  Autoload files that have changed outside of vim
vim.cmd("set autoread")

--  Use system clipboard
vim.cmd("set clipboard+=unnamed")

--  Don't show intro
vim.cmd("set shortmess+=I")

--  Better splits (new windows appear below and to the right)
vim.cmd("set splitbelow")
vim.cmd("set splitright")

-- Highlight the current line
vim.cmd("set cursorline")

