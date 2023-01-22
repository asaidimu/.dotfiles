local cmp_lsp = require('cmp_nvim_lsp')
local client_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = cmp_lsp.default_capabilities(client_capabilities)

local common_setup_opts = {
    capabilites = capabilities,
-- lua
    settings = {
        Lua = {
            workspace = {
                library = {
                    [vim.fn.stdpath("config") .. '/lua'] = true,
                    ["/usr/share/nvim/runtime/lua"] = true,
                    ["/usr/share/nvim/runtime/lua/vim"] = true,
                    ["/usr/share/nvim/runtime/lua/vim/lsp"] = true
                }
            },
            diagnostics = {
                  globals= {
                      "hs",
                      "vim",
                      "conky",
                      "it",
                      "describe",
                      "before_each",
                      "after_each"
                  }
            }
        }
    }
}

local lsp_installer = require "nvim-lsp-installer"

local server_opts = {}


local ts = require("typescript")

-- tsserver
server_opts.tsserver = {
  commands = {
    TypescriptAddMissingImports = {
      ts.actions.addMissingImports,
      description = "Add missing imports."
    },
    TypescriptOrganizeImports = {
      ts.actions.organizeImports,
      description = "Organize imports."
    },
    TypescriptFixAll = {
      ts.actions.fixAll,
      description = "Fix all."
    },
    TypescriptRemoveUnused = {
      ts.actions.removeUnused,
      description = "Remove unused variables."
    }

  },
    on_attach = function(_, bufnr)
        local opts = { silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TypescriptRemoveUnused<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "go", ":TypescriptOrganizeImports<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TypescriptAddMissingImports<CR>", opts)
    end,
}

--tailwind
server_opts.tailwindcss = {
    filetypes = { "gohtml", "handlebars", "hbs", "html", "postcss", "javascriptreact", "rescript", "typescriptreact", "vue",},
    autostart= false
}


-- emmet ls
server_opts.emmet_ls = {
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    autostart= false
}

-- ltex extra
server_opts.ltex = {
    on_attach = function()
        -- your other on_attach functions.
        require("ltex_extra").setup{
            load_langs = { "es-AR", "en-US" }, -- table <string> : languages for witch dictionaries will be loaded
            init_check = true, -- boolean : whether to load dictionaries on startup
            path = vim.env.XDG_CONFIG_HOME .. "/nvim/spell/dictionary.txt",
            log_level = "none", -- string : "none", "trace", "debug", "info", "warn", "error", "fatal"
        }
    end,
}

return lsp_installer.on_server_ready(function(sv)
    local opts = vim.deepcopy(common_setup_opts)

    if server_opts[sv.name] then
        opts = vim.tbl_deep_extend('force', opts, server_opts[sv.name])
    end
    vim.g.ServerOpts = vim.inspect(opts)
    sv:setup(opts)
end)


