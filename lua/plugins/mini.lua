-- mini.nvim: statusline, textobjects, surround, move, etc.
return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup({ n_lines = 500 })
    require("mini.surround").setup({})
    require("mini.splitjoin").setup({})
    require("mini.operators").setup({})
    require("mini.move").setup({
      mappings = {
        left = "<M-n>",
        right = "<M-o>",
        down = "<M-e>",
        up = "<M-i>",
        line_left = "<M-n>",
        line_right = "<M-o>",
        line_down = "<M-e>",
        line_up = "<M-i>",
      },
    })
    -- Statusline (replaces lualine)
    require("mini.statusline").setup({ use_icons = vim.g.have_nerd_font })
  end,
}
