local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        smarty = { "smarty" },
        php = { "php" },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
    },
    formatters = {
        php = {
            command = "php-cs-fixer",
            args = {
                "fix",
                "$FILENAME",
                "--allow-risky=yes",
            },
            stdin = false,
        },
        smarty = {
            command = "prettier",
            args = {
                "--parser=html",
            },
            stdin = true,
        }
    }
}

require("conform").setup(options)

vim.api.nvim_create_user_command("Format", function(args)
    local range = nil
    if args.count ~= -1 then
        local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
        range = {
            start = { args.line1, 0 },
            ["end"] = { args.line2, end_line:len() },
        }
    end
    require("conform").format({ async = true, lsp_format = "fallback", range = range, timeout_ms=2500 })
end, { range = true })
