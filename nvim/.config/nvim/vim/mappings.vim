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

" pause with <leader>z
noremap <leader>z <c-z>

" macro buffer
nnoremap ` @a

" -- exit --
nnoremap <silent>ee :q! <cr>

" stay on the home row.
for key in ['<Up>', '<Down>', '<Left>', '<Right>', ]
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
endfor

" Fzf
nnoremap <silent> <c-f> :FZF<cr>

" nvim-tree
nnoremap <silent><leader>e :NvimTreeToggle<CR>

" Tabularize
map <leader>=  :Tabularize /=<cr>
map <leader>c  :Tabularize /:<cr>
map <leader>=s :Tabularize /=\zs<cr>
map <leader>cs :Tabularize /:\zs<cr>

" Tag Bar
map <silent> <leader>t :TagbarToggle <cr>

" Telescope
nnoremap F <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap M <cmd>Telescope harpoon marks<cr>

" Trouble
nnoremap <silent> <leader>x :TroubleToggle <cr>

" bufferline
nnoremap <silent> gb <cmd>BufferLinePick<CR>
nnoremap <silent> gn <cmd>BufferLineCycleNext<CR>
nnoremap <silent> gt <cmd>BufferLineCycleNext<CR>
nnoremap <silent> gp <cmd>BufferLineCyclePrev<CR>
nnoremap <silent> gx <cmd>BufferLinePickClose<CR>

" close buffers with leader q
noremap <silent><leader>q <cmd>BufferLinePickClose<cr>

" harpoon
nnoremap <silent><leader>m :lua require("harpoon.mark").add_file()<CR>

