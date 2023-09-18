require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "cssls",
        "dockerls",
        "emmet_ls",
        "gopls",
        "html",
        "jsonls",
        "tsserver",
        "prismals",
        "tailwindcss",
        "yamlls",
        "sqlls",
    },
})

local cmp_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")
local client_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = cmp_lsp.default_capabilities(client_capabilities)
local ts = require("typescript")
local util = require("lspconfig/util")

require("mason-lspconfig").setup_handlers({
    function(server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup({
            capabilities = capabilities,
        })
    end,
    --[[ -- rust analyzer
    ["rust-analyzer"] = function()
        lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
            filetypes= { "rust"},
            root_dir = util.root_pattern("Cargo.toml"),
            settings = {
                ["rust-analyzer"] = {
                    cargo = {
                        allFeatures = true
                    }
                }
            }
        })
    end, ]]
    -- yamlls
    ["yamlls"] = function()
        lspconfig.yamlls.setup({
            settings = {
                yaml = {
                    keyOrdering = false,
                },
            },
        })
    end,

    -- tsserver
    ["tsserver"] = function()
        lspconfig.tsserver.setup({
            capabilities = capabilities,
            commands = {
                TypescriptAddMissingImports = {
                    ts.actions.addMissingImports,
                    description = "Add missing imports.",
                },
                TypescriptOrganizeImports = {
                    ts.actions.organizeImports,
                    description = "Organize imports.",
                },
                TypescriptFixAll = {
                    ts.actions.fixAll,
                    description = "Fix all.",
                },
                TypescriptRemoveUnused = {
                    ts.actions.removeUnused,
                    description = "Remove unused variables.",
                },
            },
            on_attach = function(_, bufnr)
                local opts = { silent = true }
                vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<Cmd>TypescriptRemoveUnused<CR>", opts)
                vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<Cmd>TypescriptOrganizeImports<CR>", opts)
                vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<Cmd>TypescriptAddMissingImports<CR>", opts)
            end,
        })
    end,

    --tailwind
    ["tailwindcss"] = function()
        lspconfig.tailwindcss.setup({
            capabilities = capabilities,
            filetypes = {
                "gohtml",
                "handlebars",
                "hbs",
                "html",
                "postcss",
                "javascriptreact",
                "rescript",
                "typescriptreact",
                "vue",
            },
            autostart = false,
        })
    end,

    -- emmet ls
    ["emmet_ls"] = function()
        lspconfig.emmet_ls.setup({
            capabilities = capabilities,
            filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
            autostart = false,
        })
    end,

    -- ltex extra
    ["ltex"] = function()
        lspconfig.ltex.setup({
            capabilities = capabilities,
            on_attach = function()
                -- your other on_attach functions.
                require("ltex_extra").setup({
                    load_langs = { "es-AR", "en-US" }, -- table <string> : languages for witch dictionaries will be loaded
                    init_check = true,  -- boolean : whether to load dictionaries on startup
                    path = vim.env.XDG_CONFIG_HOME .. "/nvim/spell/dictionary.txt",
                    log_level = "none", -- string : "none", "trace", "debug", "info", "warn", "error", "fatal"
                })
            end,
        })
    end,

    -- lua lts
    ["lua_ls"] = function()
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    workspace = {
                        library = {
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                            ["/usr/share/nvim/runtime/lua"] = true,
                            ["/usr/share/nvim/runtime/lua/vim"] = true,
                            ["/usr/share/nvim/runtime/lua/vim/lsp"] = true,
                        },
                    },
                    diagnostics = {
                        globals = {
                            "hs",
                            "vim",
                            "conky",
                            "it",
                            "describe",
                            "before_each",
                            "after_each",
                        },
                    },
                },
            },
        })
    end,
})
