-- Misc utilities
return {
  { "tpope/vim-sleuth" },           -- Detect tabstop/shiftwidth
  { "tpope/vim-eunuch" },           -- File operations (mkdir, mv, etc.)
  { "yamatsum/nvim-cursorline", opts = {} },
  {
    "nat-418/boole.nvim",           -- Increment/decrement bools, dates
    opts = { mappings = { increment = "<C-a>", decrement = "<C-x>" } },
  },
  {
    "folke/todo-comments.nvim",     -- Highlight TODO/FIXME/NOTE
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
  {
    "folke/persistence.nvim",       -- Session restore
    event = "BufReadPre",
    opts = {},
  },
  {
    "mbbill/undotree",              -- Undo tree
    keys = { { "<leader>u", ":UndotreeToggle<CR>", desc = "[U]ndo Tree" } },
  },
  {
    "lukas-reineke/indent-blankline.nvim", -- Indent guides
    main = "ibl",
    opts = {},
  },
  { "HiPhish/rainbow-delimiters.nvim" },   -- Rainbow brackets
  {
    "aznhe21/actions-preview.nvim",        -- Code action preview
    opts = {
      telescope = {
        sorting_strategy = "ascending",
        layout_strategy = "vertical",
        layout_config = {
          width = 0.8, height = 0.9, prompt_position = "top", preview_cutoff = 20,
          preview_height = function(_, _, max_lines) return max_lines - 15 end,
        },
      },
    },
    keys = {
      { "<leader>ca", "<cmd>lua require('actions-preview').code_actions()<CR>", desc = "[C]ode [A]ctions" },
    },
  },
  {
    "stevanmilic/nvim-lspimport",   -- Auto import
    config = function()
      vim.keymap.set("n", "<leader>ci", require("lspimport").import, { desc = "[C]ode [I]mport" })
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",  -- Python venv selector
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
    },
    branch = "regexp",
    config = function() require("venv-selector").setup() end,
    keys = { { "<leader>v", "<cmd>VenvSelect<cr>", desc = "[V]env Select" } },
  },
}
