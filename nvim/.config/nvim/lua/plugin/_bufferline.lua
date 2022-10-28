local bufferline = require('bufferline')

bufferline.setup {
    options = {
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count)
            return "("..count..")"
        end,
        show_tab_indicators = false,
        always_show_bufferline = true,
        sort_by = 'id',
        show_close_icon = false,
        modified_icon = '',
        buffer_close_icon = '',
        indicator ={
            icon = ' ',
            style = 'icon'
        }
    }
}

