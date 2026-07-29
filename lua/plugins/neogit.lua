-- Neogit
return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    { "<leader>g", "<cmd>Neogit kind=auto<CR>", desc = "Neo[G]it" },
  },
  opts = { kind = "auto" },
}
