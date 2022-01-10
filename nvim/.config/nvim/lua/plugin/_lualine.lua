return require('lualine').setup({
    options = {
        theme = 'codedark'
    },
    tabline = {
        lualine_a = {
            {
            'tabs',
            mode = 2
        }
    },
        lualine_z = {
            {
                'filename',
                path = 1,
        }
    },
    }
})

