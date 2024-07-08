
local options = vim.tbl_deep_extend("force", require("nvchad.configs.cmp"), {
    completion = {
        completeopt="menu,menuone,noinsert,noselect"
    }
})

return options
