vim.g.coq_settings = {
    ['auto_start'] ='shut-up',
    ['display'] = {
        ['ghost_text'] = {
            ['enabled']= true,
            ['context'] = { " ", " " },
            ['highlight_group'] = "Comment"
        },
        ['pum'] = {
            ['kind_context']= {"  ", " "},
            ['source_context']= { "(", ")" }
        },
        ['icons']                 = {
            ['mode']              = 'short',
            ['mappings']          = {
                ['Boolean']       = "",
                ['Character']     = "",
                ['Class']         = "",
                ['Color']         = "",
                ['Constant']      = "",
                ['Constructor']   = "",
                ['Enum']          = "",
                ['EnumMember']    = "",
                ['Event']         = "ﳅ",
                ['Field']         = "",
                ['File']          = "",
                ['Folder']        = "ﱮ",
                ['Function']      = "ﬦ",
                ['Interface']     = "",
                ['Keyword']       = "",
                ['Method']        = "",
                ['Module']        = "",
                ['Number']        = "",
                ['Operator']      = "Ψ",
                ['Parameter']     = "",
                ['Property']      = "ﭬ",
                ['Reference']     = "",
                ['Snippet']       = "",
                ['String']        = "",
                ['Struct']        = "ﯟ",
                ['Text']          = "",
                ['TypeParameter'] = "",
                ['Unit']          = "",
                ['Value']         = "",
                ['Variable']      = "ﳛ",
            }
        }
    },
}
