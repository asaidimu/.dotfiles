return {
    {
        "folke/which-key.nvim",
        enabled = false,
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = {
                side = "left"
            }
        }
    },
    {
        'stevearc/conform.nvim',
        lazy = false,
        config = function()
            require("configs.conform")
        end
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
        cmd = { "Trouble" },
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
        lazy = false,
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
        init = function()
            vim.g.rustfmt_autosave = 1
        end
    },
    {
        'numToStr/Comment.nvim',
        opts = {
        }
    },
    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        dependencies = "williamboman/mason-lspconfig.nvim",
        config = function()
            require("configs.rust-tools")
        end
    },
    {
        "hedyhli/outline.nvim",
        lazy = true,
        cmd = { "Outline", "OutlineOpen" },
        opts = {
            preview_window = {
                live = true,
                width = 100,
                min_width = 100
            },
        },
    },
    {
        "davidmh/mdx.nvim",
        ft = "mdx",
        config = true,
        dependencies = { "nvim-treesitter/nvim-treesitter" }
    },
    {
        "jinzhongjia/LspUI.nvim",
        branch = "main",
        lazy = false,
        config = function()
            require("LspUI").setup({})
        end
    },
    {
        "pmizio/typescript-tools.nvim",
        lazy = false,
        dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        config = function()
            require("typescript-tools").setup({})
        end
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require("configs.nvim-dap")
        end,
        dependencies = {
            'rcarriga/nvim-dap-ui',
            'nvim-neotest/nvim-nio',

            -- optional
            -- 'mason-org/mason.nvim',
            'jay-babu/mason-nvim-dap.nvim',
            'leoluz/nvim-dap-go', -- Golang
            'theHamsta/nvim-dap-virtual-text',
        },
        cmd = { "DapContinue" },
        lazy = true,
    },
    {
        "Weissle/persistent-breakpoints.nvim",
        config = function()
            require("persistent-breakpoints").setup {
                load_breakpoints_event = { "BufReadPost" }
            }

            vim.keymap.set("n", "<leader>db", ":PBToggleBreakpoint<CR>")
        end,
    },
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "marilari88/neotest-vitest",
        },
        config = function()
            require("neotest").setup({
                adapters = {
                    require("neotest-vitest"),
                }
            })
        end,
    },
    {
        "folke/twilight.nvim",
        opts = {}

    },
    {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        opts = {}
    },
    {
        "olimorris/codecompanion.nvim",
        cmd = { "CodeCompanionChat" },
        opts = {},
        config = function()
            require("configs.codecompanion")
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },
    {
        "Davidyz/VectorCode",
        build = "pipx upgrade vectorcode", -- optional but recommended. This keeps your CLI up-to-date.
        dependencies = { "nvim-lua/plenary.nvim" },
    }
}
