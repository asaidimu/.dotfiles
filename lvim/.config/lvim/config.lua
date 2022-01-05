--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true

vim.g.gruvbox_material_background = "hard"
lvim.colorscheme = "gruvbox-material"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "'"

lvim.keys.normal_mode = {
   ["<Leader>e"] = ":NvimTreeToggle<CR>",
   ["<Leader>x"] = ":TagbarToggle<CR>",
   ["<Space>"] = ":noh<CR>",
 }
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.which_key.active = false
lvim.builtin.lualine.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.comment.active = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "html",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- setup lsp ---
require("lvim.lsp.manager").setup("emmet_ls", {
  cmd = {"/home/augustine/.local/share/nvim/lsp_servers/emmet_ls/node_modules/.bin/emmet-ls", "--stdio"},
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact", "typescript"},
  root_dir=function()
        return vim.loop.cwd()
      end;
})


-- Additional Plugins
lvim.plugins = {
    {"marko-cerovac/material.nvim"},
    {"sainnhe/edge"},
    {"Th3Whit3Wolf/space-nvim"},
    {"sainnhe/gruvbox-material"},
    {'mattn/emmet-vim'},
    {'junegunn/fzf', cmd="fzf#install()" },
    { 'junegunn/fzf.vim' },
    { 'vim-airline/vim-airline'},
    { 'vim-airline/vim-airline-themes' },
    {'Yggdroot/indentLine'},
    {'scrooloose/nerdcommenter'},
    {'majutsushi/tagbar'},
}

require('settings')
require('plugins')
require('bindings')
require('formatters')
require('linters')
require('lsp')
