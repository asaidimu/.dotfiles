require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode", silent = true })
map("i", "jk", "<ESC>", { silent = true })

map("i", "<leader>a", "<esc>A", { silent = true })
map("i", "<leader>o", "<esc>o", { silent = true })
map("n", "=", function()
    require('conform').format({ lsp_fallback = true })
end, { silent = true })
map("n", "zz", ":q!<cr>", { silent = true })
map("n", "<leader>w", ":w<cr>", { silent = true })
map("n", "<leader>q", ":CloseBuffer<cr>", { silent = true })
map("n", "<leader>w-", "<C-W>-", { silent = true })
map("n", "<leader>w[", "<C-W>=", { silent = true })
map("n", "<leader>w+", "<C-W>+", { silent = true })
map("n", "<leader>w]", "<C-W>_", { silent = true })
map("n", "<leader>h", "<C-w>h", { silent = true })
map("n", "<leader>j", "<C-w>j", { silent = true })
map("n", "<leader>k", "<C-w>k", { silent = true })
map("n", "<leader>l", "<C-w>l", { silent = true })
map("n", "<leader>v", ":vsplit<cr>", { silent = true })
map("n", "<space>", ":nohlsearch<cr>", { silent = true })
map("n", "`", "@a", { silent = true })
map("n", "<leader>e", ":NnnPicker %:p:h<CR>", { silent = true })
map("n", "gn", ":bnext<cr>", { silent = true })
map("n", "gp", ":bprevious<cr>", { silent = true })
map("n", "<leader>c", ":lua require('Comment.api').toggle.linewise.current()<cr>", { silent = true })
map("n", "<leader>x", ":Trouble diagnostics toggle focus=false filter.buf=0<cr>", { silent = true })
map("n", "ga", ":LspUI code_action<CR>", { silent = true })
map("n", "gr", ":TSToolsOrganizeImports<CR>", { silent = true })
map("n", "<leader>r", ":LspUI rename<CR>", { silent = true })
map("n", "<leader>o", ":Outline<CR>", { silent = true })
map("v", "<leader>c", ":lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<cr>", { silent = true })
map("n", "<leader>t", ":NvimTreeToggle<CR>", { silent = true })