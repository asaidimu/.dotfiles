" vim plug location
call plug#begin('~/.config/nvim/plugged') "

" -- Git --
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" -- Navigation --
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'

" -- Aesthetics --
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
"Plug 'ThePrimeagen/vim-apm'

" -- Language Support &  Completion --
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
"Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'sirver/ultisnips'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'elkowar/yuck.vim'
Plug 'stephenway/postcss.vim'

" -- Interface --
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'norcalli/nvim-colorizer.lua'

" -- Writing --
Plug 'lervag/vimtex', { 'for': ['text', 'note', 'markdown'] }
Plug 'junegunn/goyo.vim', { 'for': ['text', 'note', 'markdown'] }
Plug 'junegunn/limelight.vim', { 'for': ['text', 'note', 'markdown'] }
Plug 'junegunn/vim-journal', { 'for': ['text', 'note', 'markdown'] }
Plug 'rhysd/vim-grammarous', { 'for': ['text', 'note', 'markdown'] }
Plug 'reedes/vim-pencil', { 'for': ['text', 'note', 'markdown'] }
Plug 'dbmrq/vim-ditto'
Plug 'reedes/vim-lexical'

" -- Syntax Support --
Plug 'smancill/conky-syntax.vim'
Plug 'leafgarland/typescript-vim'
Plug 'vim-python/python-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'tmux-plugins/vim-tmux'
Plug 'pangloss/vim-javascript'
"Plug 'yuezk/vim-js'
"Plug 'maxmellon/vim-jsx-pretty'

" -- Themes --
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'doums/darcula'
Plug 'altercation/vim-colors-solarized'
Plug 'jdsimcoe/panic.vim'
Plug 'rainglow/vim'
Plug 'vim-scripts/CycleColor'
Plug 'larsbs/vimterial_dark'

" -- End of Plugin Manager --
call plug#end()

