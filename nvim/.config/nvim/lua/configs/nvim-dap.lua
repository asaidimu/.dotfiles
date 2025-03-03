vim.keymap.set("n", "<leader>d<space>", ":DapContinue<CR>")
vim.keymap.set("n", "<leader>dl", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>dj", ":DapStepOver<CR>")
vim.keymap.set("n", "<leader>dh", ":DapStepOut<CR>")
vim.keymap.set("n", "<leader>dz", ":ZoomWinTabToggle<CR>")
vim.keymap.set(
    "n",
    "<leader>dgt", -- dg as in debu[g] [t]race
    ":lua require('dap').set_log_level('TRACE')<CR>"
)
vim.keymap.set(
    "n",
    "<leader>dge", -- dg as in debu[g] [e]dit
    function()
        vim.cmd(":edit " .. vim.fn.stdpath('cache') .. "/dap.log")
    end
)
vim.keymap.set("n", "<F1>", ":DapStepOut<CR>")
vim.keymap.set("n", "<F2>", ":DapStepOver<CR>")
vim.keymap.set("n", "<F3>", ":DapStepInto<CR>")
vim.keymap.set(
    "n",
    "<leader>d-",
    function()
        require("dap").restart()
    end
)
vim.keymap.set(
    "n",
    "<leader>d_",
    function()
        require("dap").terminate()
        require("dapui").close()
    end
)


local dap = require("dap")

dap.adapters.delve = {
    type = 'server',
    port = '${port}',
    executable = {
        command = 'dlv',
        args = { 'dap', '-l', '127.0.0.1:${port}' },
    }
}

dap.configurations.go = {
    {
        type = "delve",
        name = "Debug",
        request = "launch",
        program = "${file}"
    },
    {
        type = "delve",
        name = "Debug test", -- configuration for debugging test files
        request = "launch",
        mode = "test",
        program = "${file}"
    },
    -- works with go.mod packages and sub packages
    {
        type = "delve",
        name = "Debug test (go.mod)",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}"
    },

}
