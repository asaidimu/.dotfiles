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
  }
}

M.system = {
  i = {
    ["jk"] = { "<esc>", "Escape insert mode.", opts= { nowait = true }},
    ["<leader>a"] = {"<esc>A", "Append to the end of the line"},
    ["<leader>o"] = {"<esc>o", "Insert a new line."},
  },
  n = {
    ["zz"] = {":q!<cr>", "Unconditional exit."},
    ["<leader>w"] = {":w<cr>", "Save files shortcut."},
    ["<leader>q"] = {":wq<cr>", "Save files shortcut."},
    ["<leader>w-"] = {"<C-W>-", "Decrement height"},
    ["<leader>w["] = {"<C-W>=", "Equalize all windows"},
    ["<leader>w+"] = {"<C-W>+", "Increment height"},
    ["<leader>w]"] = {"<C-W>_", "Maximize height"},
    ["<leader>h"] =  {"<C-w>h", "Move to right pane."},
    ["<leader>j"] =  {"<C-w>j", "Move to bottom  pane."},
    ["<leader>k"] =  {"<C-w>k", "Move to top pane. "},
    ["<leader>l"] =  {"<C-w>l", "Move to left pane."},
    ["<leader>v"] =  {":vsplit<cr>", "Split windows vertically."},
    ["<space>"] = {"nohl", "Clear search results"},
    ["`"] = {"@a", "Quick macro buffer"},
    ["<leader>e"] = {":NnnPicker %:p:h<CR>"},
    ["gn"] = {":bnext<cr>"},
    ["gp"] = {":bprevious<cr>"}
  }
}

return M
