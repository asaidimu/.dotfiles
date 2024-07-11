local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    smarty = { "prettier" },
  },
  formatters = {
    prettier = {
      ft_parsers = {
        smarty = "html"
      }
    }
  }

}

require("conform").setup(options)
