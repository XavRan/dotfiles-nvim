-- Harpoon: file navigation
return {
  "ThePrimeagen/harpoon",
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "[H]arpoon [A]dd" })
    vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu, { desc = "[H]arpoon [H]ome" })
    vim.keymap.set("n", "<leader>hn", ui.nav_next, { desc = "[H]arpoon [N]ext" })
    vim.keymap.set("n", "<leader>hp", ui.nav_prev, { desc = "[H]arpoon [P]rev" })
  end,
}
