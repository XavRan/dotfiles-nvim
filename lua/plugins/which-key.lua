-- which-key
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>?",
      function() require("which-key").show({ global = false }) end,
      desc = "Buffer Local Keymaps",
    },
  },
  config = function()
    require("which-key").setup({ icons = { rules = false } })
    require("which-key").add({
      { "<leader>c", group = "[C]ode" },
      { "<leader>s", group = "[S]earch" },
      { "<leader>w", group = "[W]orkspace" },
      { "<leader>b", group = "[B]uffers" },
      { "<leader>g", group = "Neo[G]it" },
      { "<leader>h", group = "[H]arpoon" },
      { "<leader>t", group = "[T]oggle" },
    })
  end,
}
