--vim.cmd('profile start /tmp/vim_profile.log')
--vim.cmd('profile func *')
--vim.cmd('profile file *')

-- configs location
local config_dir = "$HOME/.config/nvim"

-- personal configurations
local configs = {
    "settings.vim",
    "mappings.vim",
    "functions.vim",
    "autocmd.vim",
}

-- load configurations
for _,config in pairs(configs) do
    local script = config_dir.."/vim/"..config
    vim.cmd("source "..script)
end

-- helper function
local function listFiles(dir, ext)
    return io.popen('find "'..dir..'" -type f -name "*.'..ext..'" -exec basename {} \\;')
end

-- load vimscript plugin configurations
for vimsConfig in listFiles(config_dir.."/vim/plugin", "vim"):lines() do
    vim.cmd("source "..config_dir.."/vim/plugin/"..vimsConfig)
end

-- load plugins
require("plugins")

--vim.cmd('profile pause')
