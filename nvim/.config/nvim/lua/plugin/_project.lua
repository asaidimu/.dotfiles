return require("project_nvim").setup {
    detection_methods = { "pattern", "lsp" },
    show_hidden = true,
    patterns = { ".project", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "init.lua" },
}
