local bufferline = require('bufferline')

bufferline.setup {
    options = {
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count)
            return "("..count..")"
        end,
        show_tab_indicators = true,
        separator_style = "slant",
        always_show_bufferline = true,
        sort_by = 'id'
    }
}
