require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    mappings = {
      list = {
        { key = "v", action = "vsplit"}
      }
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }

  }
})

