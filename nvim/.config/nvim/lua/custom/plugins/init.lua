local plugins = {
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
            require("custom.plugins.config.null_ls")
        end,
    },
    {
        "jose-elias-alvarez/typescript.nvim",
    },
    {
        "nvimdev/lspsaga.nvim",
        cmd = { "Lspsaga" },
        config = function()
            require("custom.plugins.config.saga")
        end,
    },
    {
        "rcarriga/nvim-notify",
        lazy = false,
        config = function()
            require("custom.plugins.config.notifier")
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        lazy = false,
        config = function()
            require("indent_blankline").setup({})
        end,
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
            require("custom.plugins.config.nnn")
        end,
    },
    {
        "williamboman/mason.nvim",
        cmd = { "Mason" },
        opts = require("plugins.configs.mason"),
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require("custom.plugins.config.mason-nvim")
        end,
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            return require("custom.plugins.config.cmp")
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
    },{
        "simrat39/rust-tools.nvim",
        ft="rust",
        dependencies = "williamboman/mason-lspconfig.nvim",
        config = function ()
            require("custom.plugins.config.rust-tools")
        end
    }
}
return plugins
