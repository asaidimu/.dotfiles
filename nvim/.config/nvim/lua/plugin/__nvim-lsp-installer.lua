local cmp_lsp = require('cmp_nvim_lsp')
local client_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = cmp_lsp.update_capabilities(client_capabilities)

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

return lsp_installer.on_server_ready(function(server)
    local opts = vim.deepcopy(common_setup_opts)
    if server_opts[server.name] then
        opts = vim.tbl_deep_extend('force', opts, server_opts[server.name])
    end

    server:setup(opts)
end)

