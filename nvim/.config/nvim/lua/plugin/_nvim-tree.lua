return require'nvim-tree'.setup(
{
      disable_netrw = true,
      hijack_netrw = true,
      open_on_setup = false,
      ignore_ft_on_setup = {
        "startify",
        "dashboard",
        "alpha",
      },
      update_to_buf_dir = {
        enable = true,
        auto_open = true,
      },
      open_on_tab = false,
      hijack_cursor = false,
      update_cwd = true,
      diagnostics = {
        enable = false,
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
      },
      system_open = {
        cmd = nil,
        args = {},
      },
      git = {
        enable = true,
        ignore = true,
        timeout = 200,
      },
      view = {
        width = 30,
        height = 30,
        side = "right",
        auto_resize = true,
        number = false,
        relativenumber = false,
        mappings = {
          custom_only = false,
          list = { },
        },
      },
      filters = {
        dotfiles = true,
        custom = { ".git", "node_modules", ".cache" },
      },
      ['actions.open_file.window_picker.exclude'] = {
          filetype= {
              'notify',
              'packer',
              'qf'
          },
          buftype= {
              'terminal'
          }
      },
      ["actions.open_file.quit_on_open"] = true

})
