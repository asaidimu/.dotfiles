
local function diagnostic_count()
    local error_count, warn_count, info_count, hint_count
      local diagnostics = vim.diagnostic.get(nil)
      local count = { 0, 0, 0, 0 }
      for _, diagnostic in ipairs(diagnostics) do
        if vim.startswith(vim.diagnostic.get_namespace(diagnostic.namespace).name, 'vim.lsp') then
          count[diagnostic.severity] = count[diagnostic.severity] + 1
        end
      end
      error_count = count[vim.diagnostic.severity.ERROR]
      warn_count = count[vim.diagnostic.severity.WARN]
      info_count = count[vim.diagnostic.severity.INFO]
      hint_count = count[vim.diagnostic.severity.HINT]

    return { error=error_count, warn=warn_count, info=info_count, hint=hint_count }
end

--
require('lualine').setup {
    options = {
        theme = "sonokai",
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff',
    },
        lualine_c = {
        {
            'diagnostics',

            sections = { 'error', 'warn', 'info', 'hint' },
            sources = { diagnostic_count },
            symbols = { error = " ", warn = " ", hint = " ", info = "כֿ " },
            diagnostics_color = {
                warn =  "DiagnosticWarnSign",
                error = "DiagnosticErrorSign",
                info  = "DiagnosticInfoSign",
                hint  = "DiagnosticHintSign",
            },
            always_visible = false
        }
    },
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
