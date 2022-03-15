" -- Ditto
let g:ditto_dir = "~/.dotfiles/personal/nvim/ditto"

" -- Goyo
let g:goyo_width = 100

" pencil wrap mode
let g:pencil#wrapModeDefault = 'soft'

augroup prose
  autocmd!
  autocmd FileType markdown,norg,text set textwidth=80
  autocmd FileType markdown,norg,text call lexical#init({
        \'spell': 0,
        \'thesaurus':  ['~/.local/share/thesaurus/thesaurus.txt'],
        \'spellfile':  ['~/.dotfiles/personal/nvim/spell/en.utf-8.add']
        \})
  autocmd FileType markdown,norg,text call pencil#init({ 'wrap': 'soft'})
  autocmd FileType markdown,norg,text :LspStart ltex
augroup END
