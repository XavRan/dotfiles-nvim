-- Trouble: diagnostics browser
return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  keys = {
    { "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics" },
    { "<leader>tT", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics" },
    { "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols" },
    { "<leader>tl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP References" },
    { "<leader>tL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List" },
    { "<leader>tQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List" },
  },
}
