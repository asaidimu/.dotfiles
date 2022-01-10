" create array for symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"define a theme to be used by vim-airline
let g:airline_theme = 'google_dark'

" use powerline
let g:airline_powerline_fonts = 1

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''


" enable/disable enhanced tabline.
let g:airline#extensions#tabline#enabled = 1

" enable/disable tagbar integration.
let g:airline#extensions#tagbar#enabled = 1

" enable/disable displaying buffers with a single tab
let g:airline#extensions#tabline#show_buffers = 0

" enable/disable YCM integration
let g:airline#extensions#ycm#enabled = 1

" set list of filetypes for which word counting is enabled: >
let g:airline#extensions#wordcount#filetypes =
            \['asciidoc', 'help', 'mail', 'markdown', 'pandoc', 'org', 'rst', 'tex', 'text', 'txt']

" control which sections get truncated and at what width. >
let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 79,
      \ 'x': 90,
      \ 'y': 88,
      \ 'z': 45,
      \ 'warning': 80,
      \ 'error': 80,
      \ }
