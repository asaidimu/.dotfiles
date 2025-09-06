vim.keymap.set("n", "<leader>d<space>",
    function()
        require("dap").continue()
    end
)

vim.keymap.set("n", "<leader>ds",
    function()
        require("dap").step_into()
    end
)

vim.keymap.set("n", "<leader>do",
    function()
        require("dap").step_over()
    end
)

vim.keymap.set("n", "<leader>dx",
    function()
        require("dap").step_out()
    end
)

vim.keymap.set("n", "<leader>db",
    function()
        require("dap").toggle_breakpoint()
    end
)

vim.keymap.set("n", "<leader>du",
    function()
        require("dapui").toggle()
    end
)

vim.keymap.set("n", "<leader>du",
    function()
        require("dapui").toggle()
    end
)

require('mason-nvim-dap').setup {
    automatic_installation = true,
    handlers = {},
    ensure_installed = {
        'delve',
    },
}

local dap = require("dap")
local dapui = require("dapui")

dap.listeners.after.event_initialized['dapui_config'] = dapui.open
dap.listeners.before.event_terminated['dapui_config'] = dapui.close
dap.listeners.before.event_exited['dapui_config'] = dapui.close

--[[ dapui.setup {
    icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
    layouts = { {
        elements = { {
            id = "scopes",
            size = 0.25
        }, {
            id = "breakpoints",
            size = 0.25
        }, {
            id = "stacks",
            size = 0.25
        }, {
            id = "watches",
            size = 0.25
        } },
        position = "left",
        size = 40,
        width = 240,
    }, {
        elements = { {
            id = "repl",
            size = 0.5
        }, {
            id = "console",
            size = 0.5
        } },
        position = "bottom",
        size = 10
    } },
} ]]

require("nvim-dap-virtual-text").setup()

require('dap-go').setup({
    delve = {
        -- Use Mason's delve installation with fallback to system delve
        path = function()
            local mason_delve = vim.fn.stdpath("data") .. "/mason/bin/dlv"
            if vim.fn.executable(mason_delve) == 1 then
                return mason_delve
            end
            -- Fallback to system delve
            return vim.fn.exepath("dlv") ~= "" and vim.fn.exepath("dlv") or "dlv"
        end,

        -- On Windows delve must be run attached or it crashes.
        -- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
        -- detached = vim.fn.has 'win32' == 0,
    }
})

--[[ dap.adapters.delve = {
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

} ]]
