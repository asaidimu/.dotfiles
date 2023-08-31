
-- sonokai
vim.g.sonokai_style = 'atlantis'
vim.g.sonokai_enable_italic = 0
vim.g.sonokai_disable_italic_comment = 0
vim.g.sonokai_diagnostic_virtual_text = 'colored'
vim.g.sonokai_better_performance = 1

-- colorscheme
vim.cmd('set background="dark"')
vim.cmd("colorscheme sonokai")

vim.cmd("highlight DiagnosticErrorSign ctermfg=203 guifg=#ff6578 ctermbg=236 guibg=#333846")
vim.cmd("highlight DiagnosticWarnSign  ctermfg=179 guifg=#eacb64 ctermbg=236 guibg=#333846")
vim.cmd("highlight DiagnosticInfoSign  ctermfg=110 guifg=#72cce8 ctermbg=236 guibg=#333846")
vim.cmd("highlight DiagnosticHintSign  ctermfg=107 guifg=#9dd274 ctermbg=236 guibg=#333846")
