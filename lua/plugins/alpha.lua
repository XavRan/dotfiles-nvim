-- Alpha: dashboard
return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = function()
    local d = require("alpha.themes.dashboard")
    d.section.buttons.val = {
      d.button("f", "  Find file", ":Telescope find_files hidden=true<CR>"),
      d.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
      d.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
      d.button("g", "  Find text", ":Telescope live_grep <CR>"),
      d.button("c", "  Config", ":e $MYVIMRC <CR>"),
      d.button("s", "  Restore Session", [[:lua require("persistence").load({last = true}) <cr>]]),
      d.button("l", "  Lazy", ":Lazy<CR>"),
      d.button("q", "  Quit", ":qa<CR>"),
    }
    return d
  end,
  config = function(_, dashboard)
    require("alpha").setup(dashboard.opts)
    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
