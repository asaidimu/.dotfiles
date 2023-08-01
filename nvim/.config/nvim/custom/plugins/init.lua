
local plugins = {
    {
        "folke/which-key.nvim",
        enabled = false
    },
    {
        "nvim-tree/nvim-tree.lua",
        enabled=false
    },
    -- {
    --      'sainnhe/sonokai',
    --      lazy=false,
    --     config = function()
    --         require "custom.plugins.config.sonokai"
    --     end
    -- },
    {
        'luukvbaal/nnn.nvim',
        lazy=false,
        config = function()
            require "custom.plugins.config.nnn"
        end
    }

}
return plugins
