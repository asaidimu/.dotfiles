
-- Close all folds when opening a new buffer
vim.api.nvim_create_autocmd("BufRead", {
  pattern = "*",
  command = "normal zM",
})

-- Declare file types
local filetype_patterns = {
  ["css"] = {"*.css", "*.rasi"},
  ["scss"] = {"*.scss"},
  ["sass"] = {"*.sass"},
  ["javascript"] = {"*.js"},
  ["html"] = {"*.html", "*.ejs"},
  ["php"] = {"*.spv"},
  ["nasm"] = {"*.asm"},
  ["markdown"] = {"*.md"},
  ["vue"] = {"*.vue"},
  ["mdx"] = {"*.mdx"},
}

for filetype, patterns in pairs(filetype_patterns) do
  for _, pattern in ipairs(patterns) do
    vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
      pattern = pattern,
      command = "set filetype=" .. filetype,
    })
  end
end

-- Jump to last cursor
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
      vim.cmd("normal g`\"")
    end
  end,
})

-- File formats
vim.api.nvim_create_autocmd("FileType", {
  pattern = "gitcommit",
  command = "setlocal spell textwidth=80 colorcolumn=80",
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  command = "setlocal wrap linebreak nolist textwidth=0 wrapmargin=0",
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"sh", "cucumber", "ruby", "yaml", "zsh", "vim"},
  command = "setlocal shiftwidth=2 tabstop=2 expandtab",
})

-- Quit with q for the following file types
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"help", "lspinfo", "man", "fugitive"},
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "q", "<cmd>CloseBuffer<cr>", {silent = true, noremap = true})
  end,
})

-- augroup vimrc_help
vim.api.nvim_create_augroup("vimrc_help", {clear = true})
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.txt",
  group = "vimrc_help",
  callback = function()
    if vim.bo.buftype == "help" then
      vim.cmd("wincmd L")
    end
  end,
})

-- augroup prose
vim.api.nvim_create_augroup("prose", {clear = true})
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"markdown", "norg", "text"},
  group = "prose",
  command = "set textwidth=80",
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"markdown", "norg", "text"},
  group = "prose",
  callback = function()
    vim.call('lexical#init', {
      spell = 0,
      thesaurus = {'~/.local/share/thesaurus/thesaurus.txt'},
      spellfile = {'~/.config/nvim/spell/en.utf-8.add'}
    })
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"markdown", "norg", "text"},
  group = "prose",
  callback = function()
    vim.call('pencil#init', {wrap = 'soft'})
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"markdown", "norg", "text"},
  group = "prose",
  command = ":LspStart ltex",
})

-- Filetype specific mappings
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"sh", "python", "zsh", "tmux", "vim"},
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "v", "<leader>c", ":lua require('Comment.api').toggle_current_linewise_op(vim.fn.visualmode())<cr>", {silent = true, noremap = true})
  end,
})

-- Function to load session on startup
local function load_session()
  local session_file = ".session.vim"
  local cwd = vim.fn.getcwd()
  local session_path = cwd .. "/" .. session_file

  if vim.fn.filereadable(session_path) == 1 then
    vim.cmd("source " .. session_file)
    else
  end
end

-- Autocommand for loading session on startup
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function() vim.schedule(load_session) end
})
