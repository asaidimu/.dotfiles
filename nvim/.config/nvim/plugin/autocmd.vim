" Close all folds when opening a new buffer
autocmd BufRead * normal zM

" Declare file types
autocmd Bufread,BufNewFile *.css set filetype=css
autocmd Bufread,BufNewFile *.rasi set filetype=css
autocmd Bufread,BufNewFile *.scss set filetype=scss
autocmd Bufread,BufNewFile *.sass set filetype=sass
autocmd Bufread,BufNewFile *.txt set filetype=note
autocmd Bufread,BufNewFile *.js set filetype=javascript
autocmd Bufread,BufNewFile *.html set filetype=html
autocmd Bufread,BufNewFile *.ejs set filetype=html

" jump to last cursor
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif

" file formats
autocmd Filetype gitcommit setlocal spell textwidth=80 colorcolumn=80

autocmd Filetype markdown setlocal wrap linebreak nolist textwidth=0 wrapmargin=0 " http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
autocmd FileType sh,cucumber,ruby,yaml,zsh,vim setlocal shiftwidth=2 tabstop=2 expandtab

" specify syntax highlighting for specific files
autocmd Bufread,BufNewFile *.spv set filetype=php
autocmd Bufread,BufNewFile *.asm set filetype=nasm
autocmd Bufread,BufNewFile *.md set filetype=markdown " Vim interprets .md as 'modula2' otherwise, see :set filetype?
autocmd Bufread,BufNewFile *.vue set filetype=vue

" HTML snippets in markdown
autocmd Bufread,BufNewFile *.md :UltiSnipsAddFiletypes html

" quit with q for the following file types
autocmd Filetype help,lspinfo,man,fugitive nnoremap <buffer><silent>q <cmd>CloseBuffer<cr>

" reload packer on changes
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

augroup vimrc_help
  autocmd!
  autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

" prettier
autocmd Filetype scss                  nnoremap <buffer><silent>=  :%!prettier --parser=scss --tab-width=4 <cr>
autocmd Filetype css                   nnoremap <buffer><silent>=  :%!prettier --parser=css --tab-width=4 <cr>
autocmd Filetype vue                   nnoremap <buffer><silent>=  :%!prettier --parser=vue --tab-width=4 <cr>
autocmd Filetype yaml                  nnoremap <buffer><silent>=  :%!prettier --parser=yaml --tab-width=4 <cr>
autocmd Filetype json                  nnoremap <buffer><silent>=  :%!prettier --parser=json --tab-width=4 <cr>
autocmd Filetype markdown              nnoremap <buffer><silent>=  :%!prettier --parser=markdown --tab-width=4 <cr>
autocmd Filetype xml,svg,html          nnoremap <buffer><silent>=  :%!prettier --parser=html --tab-width=4 <cr>
autocmd Filetype javascript,typescript nnoremap <buffer><silent>=  :%!prettier --parser=typescript --tab-width=4 <cr>
autocmd Filetype sh,python,zsh,tmux,vim vnoremap <buffer><silent><leader>c :lua require('Comment.api').toggle_current_linewise_op(vim.fn.visualmode())<cr>
