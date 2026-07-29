-- [[ Basic Keymaps ]]

-- Ergo keeb: ñ for command, , for search
vim.keymap.set("n", "ñ", ":")
vim.keymap.set("n", ",", "/")

-- Clear search highlight on Esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Save / exit
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix" })

-- Split navigation: hjkl
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Focus left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Focus right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Focus lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Focus upper window" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<leader>bp", ":bprev<CR>", { desc = "[B]uffer [P]rev" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "[B]uffer [D]elete" })

-- Search and replace
vim.keymap.set("n", "<Del>", ":%s/", { desc = "Search and [R]eplace" })

-- Backspace to beginning of line
vim.keymap.set("n", "<BS>", "^")

-- QoL: keep search result centered
vim.keymap.set("n", "n", "nzzzv")

-- Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[Y]ank to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "[P]aste from clipboard" })
vim.keymap.set("n", "<C-y>", ":%y+<CR>", { desc = "Copy entire file" })

-- Lazy / Mason shortcuts
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open [L]azy" })
vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Open [M]ason" })

-- Exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function() vim.highlight.on_yank() end,
})
