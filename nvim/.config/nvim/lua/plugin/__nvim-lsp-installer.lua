local cmp_lsp = require('cmp_nvim_lsp')
local client_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = cmp_lsp.update_capabilities(client_capabilities)

--[[ local servers = require "nvim-lsp-installer.servers"
local server = require "nvim-lsp-installer.server"
local path = require "nvim-lsp-installer.path" ]]

local common_setup_opts = {
    capabilites = capabilities
}

local lsp_installer = require "nvim-lsp-installer"

local server_opts = {}

-- lua
server_opts.sumneko_lua = {
    settings = {
        Lua = {
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. '/lua'] = true,
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

-- tsserver
server_opts.tsserver = { }

--tailwind
server_opts.tailwindcss = {
    filetypes = { "gohtml", "handlebars", "hbs", "html", "postcss", "javascriptreact", "rescript", "typescriptreact", "vue",}
}

return lsp_installer.on_server_ready(function(sv)
    local opts = vim.deepcopy(common_setup_opts)

    if server_opts[sv.name] then
        opts = vim.tbl_deep_extend('force', opts, server_opts[sv.name])
    end
    sv:setup(opts)
end)

--[[ local npm = require "nvim-lsp-installer.installers.npm"

local installer = npm.packages { "alcides" }

local alcides ="alcides"

local root_dir = server.get_server_root_path(alcides)

local alcides_server = server.Server:new {
    name = alcides,
    root_dir = root_dir,
    installer = installer,
    default_options = {
        cmd = {path.concat { root_dir, "node_modules/alcides/index.js" }, "--lsp" },
    },
}

servers.register(alcides_server)
]]



