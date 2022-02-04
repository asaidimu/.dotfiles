" background
set background=dark

" sonokai
let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_virtual_text = 'colored'
let g:sonokai_better_performance = 1

colorscheme sonokai

" overides for lualine
highlight! lualine_b_diagnostics_error_normal guifg=#ff6578
highlight! lualine_b_diagnostics_warn_normal guifg=#eacb64
highlight! lualine_b_diagnostics_hint_normal guifg=#9dd274
highlight! lualine_b_diagnostics_info_normal guifg=#72cce8
