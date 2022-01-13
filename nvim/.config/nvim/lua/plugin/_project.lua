return require("project_nvim").setup {
    detection_methods = { "lsp", "pattern" },
    show_hidden = true,
    patterns = { ".project", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "init.lua" },
}
