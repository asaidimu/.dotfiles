return require("nlspsettings").setup({
  config_home = vim.fn.stdpath('config') .. '/lsp',
  local_settings_root_markers = { '.git' },
  jsonls_append_default_schemas = true
})
