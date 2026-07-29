-- Project: auto-cd + telescope integration
return {
  "DrKJeff16/project.nvim",
  event = "VeryLazy",
  config = function()
    require("project").setup({})
    require("telescope").load_extension("projects")
    vim.keymap.set("n", "<leader>sp", ":Telescope projects<CR>", { desc = "[S]earch [P]rojects" })
  end,
}
