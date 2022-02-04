" -- Ditto
let g:ditto_dir = "~/.dotfiles/personal/nvim/ditto"

augroup prose
  autocmd!
  autocmd FileType markdown,mkd,html call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({
        \'spell': 0,
        \'thesaurus':  ['~/.local/share/thesaurus/thesaurus.txt'],
        \'spellfile':  ['~/.dotfiles/personal/nvim/spell/en.utf-8.add']
        \})
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
