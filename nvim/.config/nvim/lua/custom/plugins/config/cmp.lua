
local options = vim.tbl_deep_extend("force", require("plugins.configs.cmp"), {
    completion = {
        completeopt="menu,menuone,noinsert,noselect"
    }
})

return options
