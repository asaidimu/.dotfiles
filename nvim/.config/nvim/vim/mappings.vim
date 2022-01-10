" -- MAPPINGS --

" Map Leader
let mapleader = "'"

" Map escape to jk
inoremap jk <esc>
inoremap <esc> <nop>

" Make handling vertical/linear Vim windows easier
map <leader>w- <C-W>- " decrement height
map <leader>w[ <C-W>= " equalize all windows
map <leader>w+ <C-W>+ " increment height
map <leader>w] <C-W>_ " maximize height

" Make moving between windows easier
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" Make splitting Vim windows easier
map <leader>; <C-W>s
map <leader>` <C-W>v

" clear searches with space
nnoremap <silent> <space> :nohl<cr>

" spilt windows with leader s
nnoremap <silent> <leader>s :split<cr>

" spilt windows with leader v
nnoremap <silent> <leader>v :vsplit<cr>

" append to end of line with <C-a>
inoremap <leader>a <esc>A

" insert new line with <C-o>
inoremap <leader>o <esc>o

" save with <leader>w
noremap <leader>w :w<cr>

" exit with <leader>q
noremap <leader>q :wq<cr>

" pause with <leader>z
noremap <leader>z <c-z>

" macro buffer
nnoremap ` @a

" run :FZF with ctrl-f
nnoremap <silent> <c-f> :FZF<cr>

" nvim-tree
nnoremap <silent><leader>e :NvimTreeToggle<CR>

" -- Tabularize --
map <leader>=  :Tabularize /=<cr>
map <leader>c  :Tabularize /:<cr>
map <leader>=s :Tabularize /=\zs<cr>
map <leader>cs :Tabularize /:\zs<cr>

" -- Tag Bar --
map <silent> <leader>x :TagbarToggle <cr>

" -- Fzf --
nnoremap <silent> <leader>b :Buffers<cr>

" -- exit --
nnoremap <silent>zz :q! <cr>
