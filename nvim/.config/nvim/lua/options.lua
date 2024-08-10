require "nvchad.options"

local options = vim.opt

-- Disable man mappings
vim.g.no_man_maps = true

-- Disable mouse
options.mouse = ""

-- No backup files
options.backup = false

-- No write backup
options.writebackup = false

-- No swap file
options.swapfile = false

-- Command history
options.history = 100

-- Always show cursor
options.ruler = true

-- Show incomplete commands
options.showcmd = true

-- Incremental searching (search as you type)
options.incsearch = true

-- Highlight search matches
options.hlsearch = true

-- Ignore case in search
options.ignorecase = true

-- Override ignorecase if search contains uppercase characters
options.smartcase = true

-- Allow hidden buffers
options.hidden = true

-- Turn word wrap off
options.wrap = false

-- Allow backspace to delete end of line, indent, and start of line characters
options.backspace = { "indent", "eol", "start" }

-- Convert tabs to spaces
options.expandtab = true

-- Set textwidth to 80 characters
options.textwidth = 80

-- Show a column at line 80
options.colorcolumn = "80"

-- Enable filetype plugins
vim.cmd("filetype plugin indent on")

-- Highlight the current line
options.cursorline = true

-- Ensure Vim doesn't beep at you every time you mistype
options.visualbell = true

-- Visual autocomplete for command menu
options.wildmenu = true

-- Redraw only when needed
options.lazyredraw = true

-- Highlight a matching [{()}] when cursor is placed on start/end character
options.showmatch = true

-- Use 24-bit colors
options.termguicolors = true

-- Divider between panes
options.fillchars:append({ vert = "┃" })

-- Set underline cursor for normal and visual modes
options.guicursor = {
  "n-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150",
  "v-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150",
  "i-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150"
}

-- Set tab size in spaces (this is for manual indenting)
options.tabstop = 4

-- The number of spaces inserted for a tab (used for auto indenting)
options.shiftwidth = 4

-- Enable auto indenting
options.autoindent = true
options.smartindent = true

-- Turn on line numbers
options.number = true
options.relativenumber = true

-- Highlight trailing whitespace
options.list = true
options.listchars = { tab = '  ', trail = '·' }

-- Get rid of the delay when pressing O (for example)
options.timeout = true
options.timeoutlen = 1000
options.ttimeoutlen = 100

-- Always show the status bar
options.laststatus = 2

-- UTF-8 encoding
options.encoding = "utf-8"

-- Autoload files that have changed outside of Vim
options.autoread = true

-- Use system clipboard
options.clipboard = { "unnamed", "unnamedplus" }

-- Don't show intro
options.shortmess:append("I")

-- Better splits (new windows appear below and to the right)
options.splitbelow = true
options.splitright = true

-- Highlight the current line (duplicated, so only one needed)
options.cursorline = true
