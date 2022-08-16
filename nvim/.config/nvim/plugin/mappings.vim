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

" clear searches with space
nnoremap <silent> <space> :nohl<cr>

" spilt windows with leader v
nnoremap <silent> <leader>v :vsplit<cr>

" append to end of line with <C-a>
inoremap <leader>a <esc>A

" insert new line with <C-o>
inoremap <leader>o <esc>o

" save with <leader>w
noremap <leader>w :w<cr>

" pause with <leader>z
noremap <leader>z <c-z>

" macro buffer
nnoremap ` @a

" -- exit --
nnoremap <silent>zz :q! <cr>

" stay on the home row.
for key in ['<Up>', '<Down>', '<Left>', '<Right>', ]
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
endfor

" Fzf
nnoremap <silent> <leader>f :Files<cr>

" nvim-tree
nnoremap <silent><leader>e :NnnPicker %:p:h<CR>

" Tabularize
map <leader>=  :Tabularize /=<cr>
map <leader>:  :Tabularize /:<cr>
map <leader>=s :Tabularize /=\zs<cr>
map <leader>:s :Tabularize /:\zs<cr>

" Telescope
" nnoremap <silent>F <cmd>Telescope find_files<cr>
nnoremap <silent>B <cmd>Telescope buffers<cr>
nnoremap <silent>M <cmd>Telescope harpoon marks<cr>
nnoremap <silent><leader>g <cmd>Telescope live_grep<cr>
nnoremap <silent><leader>b <cmd>Telescope buffers<cr>
nnoremap <silent><leader>fh <cmd>Telescope help_tags<cr>

" Trouble
nnoremap <silent> <leader>x :TroubleToggle <cr>

" bufferline
nnoremap <silent> gb <cmd>BufferLinePick<CR>
nnoremap <silent> gn <cmd>BufferLineCycleNext<CR>
nnoremap <silent> gt <cmd>BufferLineCycleNext<CR>
nnoremap <silent> gp <cmd>BufferLineCyclePrev<CR>
nnoremap <silent> gx <cmd>BufferLinePickClose<CR>

" close buffers with leader q
noremap <silent><leader>q <cmd>CloseBuffer<cr>

" harpoon
nnoremap <silent><leader>m :lua require("harpoon.mark").add_file()<CR>

" lsp saga
nnoremap <silent>ga :Lspsaga code_action<CR>
nnoremap <silent>gk :Lspsaga hover_doc<CR>
nnoremap <silent>gd :Lspsaga preview_definition<CR>
nnoremap <silent><leader>r :Lspsaga rename<CR>

" Symbols
map <silent> <leader>t :SymbolsOutline<cr>

" Comments
nnoremap <silent><leader>c :lua require('Comment.api').toggle_current_linewise()<cr>
vnoremap <silent><leader>c :lua require('Comment.api').toggle_blockwise_op(vim.fn.visualmode())<cr>

" replace text
inoremap <leader>o <esc>:%S/

