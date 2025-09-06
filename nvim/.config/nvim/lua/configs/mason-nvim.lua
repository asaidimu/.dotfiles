require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "cssls",
        "dockerls",
        "emmet_ls",
        "gopls",
        "html",
        "jsonls",
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
        "smarty"
    },
    autostart = false,
})
lspconfig.emmet_ls.setup({
    capabilities = capabilities,
    filetypes = { "html", "css", "sass", "scss", "less", "smarty" },
    autostart = true,
})

lspconfig.ltex.setup({
    capabilities = capabilities,
    on_attach = function()
        -- your other on_attach functions.
        require("ltex_extra").setup({
            load_langs = { "es-AR", "en-US" },         -- table <string> : languages for witch dictionaries will be loaded
            init_check = true,                         -- boolean : whether to load dictionaries on startup
            path = vim.env.XDG_CONFIG_HOME .. "/nvim/spell/dictionary.txt",
            log_level = "none",                        -- string : "none", "trace", "debug", "info", "warn", "error", "fatal"
        })
    end,
})
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
