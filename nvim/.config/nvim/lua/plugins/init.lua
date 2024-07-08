return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
    {
        "folke/which-key.nvim",
        enabled = false,
    },
    {
        "nvim-tree/nvim-tree.lua",
        enabled = false,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        lazy = false,
        config = function()
            require("configs.null_ls")
        end,
    },
    {
        "jose-elias-alvarez/typescript.nvim",
    },
    {
        "nvimdev/lspsaga.nvim",
        cmd = { "Lspsaga" },
        config = function()
            require("configs.saga")
        end,
    },
    {
        "rcarriga/nvim-notify",
        lazy = false,
        config = function()
            require("configs.notifier")
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        lazy = false,
        main = "ibl",
        opts = {}
    },
    {
        "folke/trouble.nvim",
        cmd = { "TroubleToggle" },
        config = function()
            require("trouble").setup({})
        end,
    },
    {
        "folke/todo-comments.nvim",
        cmd = { "TodoQuickFix", "TodoLocList", "TodoTrouble", "TodoTelescope" },
        config = function()
            require("todo-comments").setup({})
        end,
    },
    {
        "luukvbaal/nnn.nvim",
        lazy = false,
        config = function()
            require("configs.nnn")
        end,
    },
    {
        "williamboman/mason.nvim",
        cmd = { "Mason" },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require("configs.mason-nvim")
        end,
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            return require("configs.cmp")
        end,
    },
    { "barreiroleo/ltex-extra.nvim" },
    {
        "tpope/vim-obsession",
        cmd = { "Obsession" },
    },
    {
        lazy = false,
        "reedes/vim-pencil",
    },
    { "reedes/vim-wordy",           cmd = { "Wordy" } },
    {
        lazy = false,
        "reedes/vim-lexical",
    },
    { "dbmrq/vim-ditto" },
    { lazy = false,     "rhysd/vim-grammarous" },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function ()
            vim.g.rustfmt_autosave = 1
        end
    },
-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    }
},
  {
        "simrat39/rust-tools.nvim",
        ft="rust",
        dependencies = "williamboman/mason-lspconfig.nvim",
        config = function ()
            require("configs.rust-tools")
        end
    }
}
