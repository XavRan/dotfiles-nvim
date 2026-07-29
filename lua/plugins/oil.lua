-- Oil: file manager
return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    columns = { "icon", "permissions", "size", "mtime" },
    buf_options = { buflisted = true },
    view_options = { show_hidden = true },
    constrain_cursor = "name",
  },
  keys = {
    { "<leader>o", ":Oil<CR>", desc = "[O]il File Manager" },
  },
}
