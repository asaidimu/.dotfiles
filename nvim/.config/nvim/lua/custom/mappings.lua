local M = {}

M.disabled = {
    n = {
        ["<leader>a"] = "",
        ["`"] = "",
        ["'"] = "",
        ["<leader>w"] = "",
        ["<leader>wr"] = "",
        ["<leader>wl"] = "",
        ["<leader>q"] = "",
        ["<leader>x"] = "",
        ["="] = "",
    },
}

M.system = {
    i = {
        ["jk"] = { "<esc>", "Escape insert mode.", opts = { nowait = true } },
        ["<leader>a"] = { "<esc>A", "Append to the end of the line" },
        ["<leader>o"] = { "<esc>o", "Insert a new line." },
    },
    n = {
        ["="] = { ":lua vim.lsp.buf.format({ async = true })<cr>", opts = { nowait = true, silent = true } },
        ["zz"] = { ":q!<cr>", "Unconditional exit.", opts = { nowait = true, silent = true }},
        ["<leader>w"] = { ":w<cr>", "Save files shortcut.", opts = { nowait = true, silent = true }},
        ["<leader>q"] = { ":CloseBuffer<cr>", "Close current buffer.", opts = { nowait = true, silent = true }},
        ["<leader>w-"] = { "<C-W>-", "Decrement height", opts = { nowait = true, silent = true }},
        ["<leader>w["] = { "<C-W>=", "Equalize all windows", opts = { nowait = true, silent = true }},
        ["<leader>w+"] = { "<C-W>+", "Increment height", opts = { nowait = true, silent = true }},
        ["<leader>w]"] = { "<C-W>_", "Maximize height", opts = { nowait = true, silent = true }},
        ["<leader>h"] = { "<C-w>h", "Move to right pane.", opts = { nowait = true, silent = true }},
        ["<leader>j"] = { "<C-w>j", "Move to bottom  pane.", opts = { nowait = true, silent = true }},
        ["<leader>k"] = { "<C-w>k", "Move to top pane. ", opts = { nowait = true, silent = true }},
        ["<leader>l"] = { "<C-w>l", "Move to left pane.", opts = { nowait = true, silent = true }},
        ["<leader>v"] = { ":vsplit<cr>", "Split windows vertically.", opts = { nowait = true, silent = true }},
        ["<space>"] = { ":nohlsearch<cr>", "Clear search results", opts = { nowait = true, silent = true }},
        ["`"] = { "@a", "Quick macro buffer" },
        ["<leader>e"] = { ":NnnPicker %:p:h<CR>", opts = { nowait = true, silent = true }},
        ["gn"] = { ":bnext<cr>", "Select Next buffer.", opts = { nowait = true, silent = true }},
        ["gp"] = { ":bprevious<cr>", "Select previous buffer.", opts = { nowait = true, silent = true }},
        ["<leader>c"] = { ":lua require('Comment.api').toggle.linewise.current()<cr>", opts = { nowait = true, silent = true }},
        ["<leader>x"] = { ":TroubleToggle<cr>", opts = { nowait = true, silent = true }},
        ["ga"] = { ":Lspsaga code_action<CR>", opts = { nowait = true, silent = true }},
        ["gk"] = { ":Lspsaga hover_doc<CR>", opts = { nowait = true, silent = true }},
        ["gd"] = { ":Lspsaga preview_definition<CR>", opts = { nowait = true, silent = true }},
        ["<leader>r"] = { ":Lspsaga rename<CR>", opts = { nowait = true, silent = true }},
        ["<leader>f"] = { ":Telescope find_files<CR>",  opts = { nowait = true, silent = true }}
    },
    v = {
        ["<leader>c"] = { ":lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<cr>" },
    },
}

return M
