require('neorg').setup {
    load = {
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    study = "~/notes/study",
                    blog = "~/notes/blog",
                }
            }
        },
        ["core.norg.journal"] = {},
        ["core.norg.qol.todo_items"] = {},
        ["core.norg.esupports.hop"] = {},
        ["core.norg.esupports"] = {},
        ["core.autocommands"] = {},
        ["core.integrations.treesitter"] = {},
        ["core.keybinds"] = {},
        ["core.neorgcmd"] = {},
        ["core.norg.qol.toc"] = {},
    }
}
