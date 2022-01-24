" -- Ditto
let g:ditto_dir = "~/.config/nvim/ditto"

" -- Vim Lexical --
" thesaurus
let g:lexical#thesaurus = ['~/.config/nvim/thesaurus/thesaurus.txt']

augroup prose
  autocmd!
  autocmd FileType markdown,mkd,html call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
