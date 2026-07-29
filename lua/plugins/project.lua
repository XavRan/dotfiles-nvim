-- Project: auto-cd + telescope integration
return {
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
  config = function()
    require("project_nvim").setup({})
    require("telescope").load_extension("projects")
    vim.keymap.set("n", "<leader>sp", ":Telescope projects<CR>", { desc = "[S]earch [P]rojects" })
  end,
}
