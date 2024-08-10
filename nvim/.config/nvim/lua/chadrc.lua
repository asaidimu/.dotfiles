-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
    theme = "onedark",
    tabufline = {
        lazyload = false
    },
    statusline = {
        order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor", "session" },
        modules = {
            session = function()
                return " %{ObsessionStatus(' ','no-session')} "
            end
        }
    }
}

return M
