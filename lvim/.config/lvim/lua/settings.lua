-- Use vim, not vi api
vim.opt.compatible=false

-- No backup files
vim.opt.backup=false

-- disable mouse
vim.opt.mouse = ""

-- No write backup
vim.opt.writebackup=false

-- Highlight tailing whitespace
vim.opt.list=true

-- No swap file
vim.opt.swapfile=false

-- Always show cursor
vim.opt.ruler=true

-- Show incomplete commands
vim.opt.showcmd=true

-- Incremental searching (search as you type)
vim.opt.incsearch=true

-- Highlight search matches
vim.opt.hlsearch=true

-- Ignore case in search
vim.opt.smartcase=true

-- Make sure any searches /searchPhrase doesn't need the \c escape character
vim.opt.ignorecase=true

-- A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window
-- if you try and quit Vim while there are hidden buffers, you will raise an error:
-- E162: No write since last change for buffer “a.txt”
vim.opt.hidden=true

-- Turn word wrap off
vim.opt.wrap=false

-- Convert tabs to spaces
vim.opt.expandtab=true

-- Enable auto indenting
vim.opt.autoindent=true
vim.opt.smartindent=true

-- Turn on line numbers
vim.opt.number=true
vim.opt.relativenumber=true

-- Get rid of the delay when pressing O (for example)
-- http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
vim.opt.timeout=true

-- Autoload files that have changed outside of vim
vim.opt.autoread=true

-- Better splits (new windows appear below and to the right)
vim.opt.splitbelow=true
vim.opt.splitright=true

-- Highlight the current line
vim.opt.cursorline=true

-- Ensure Vim doesn't beep at you every time you make a mistype
vim.opt.visualbell=true

-- Visual autocomplete for command menu (e.g. :e ~/path/to/file)
vim.opt.wildmenu=true

-- redraw only when we need to (i.e. don't redraw when executing a macro)
vim.opt.lazyredraw=true

-- highlight a matching [{()}] when cursor is placed on start/end character
vim.opt.showmatch=true

-- Use 24bit Colors
vim.opt.termguicolors=true

-- Command history
vim.opt.history=100


-- vim.opt.tab size in spaces (this is for manual indenting)
vim.opt.tabstop=4

-- The number of spaces inserted for a tab (used for auto indenting)
vim.opt.shiftwidth=4

-- Highlight tailing whitespace
-- vim.opt.listchars='tab:\\ \\ ,trail:·'

-- Get rid of the delay when pressing O (for example)
-- http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
vim.opt.timeoutlen=1000
vim.opt.ttimeoutlen=100

-- Always show status bar
vim.opt.laststatus=2

-- UTF encoding
vim.opt.encoding="utf-8"

-- Use system clipboard
-- http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
vim.opt.clipboard="unnamed"

-- vim.opt.textwidth to 80 characters
vim.opt.textwidth=80

-- show a column at line 80
vim.opt.colorcolumn="80"

-- Don't show intro
vim.opt.shortmess="ifcnTFtOolxI"

-- Allow backspace to delete end of line, indent and start of line characters
vim.opt.backspace="indent,eol,start"

-- python3 executible
vim.g.python3_host_prog = "/sbin/python3"

-- Strip Trailing Whitespace ---
vim.cmd([[
fun! StripTrailingWhitespace()
    " don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()
  ]]
)

-- Reload Packer ---
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost config.lua source <afile> | PackerCompile
  augroup end
]])
