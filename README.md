# dotfiles-nvim

Neovim config based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), simplified and modernized.

## Requirements

- Neovim >= 0.10
- A Nerd Font
- `make` (for telescope-fzf-native, LuaSnip)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for telescope live grep)

## Install

```bash
git clone https://github.com/XavRan/dotfiles-nvim.git ~/.config/nvim
nvim
```

Lazy.nvim auto-installs on first launch.

## Structure

```
init.lua              -- bootstrap: leader, lazy.nvim, imports
lua/
  options.lua         -- vim options, diagnostics, transparency
  keymaps.lua         -- keymaps, yank highlight
  plugins/
    theme.lua           onedark
    mini.lua            ai, surround, move, statusline
    treesitter.lua      syntax highlighting
    treesitter-textobjects.lua
    telescope.lua       fuzzy finder
    lspconfig.lua       LSP + mason + fidget
    cmp.lua             completion (nvim-cmp + luasnip)
    conform.lua         formatting
    gitsigns.lua        git signs
    which-key.lua       keymap discovery
    autopairs.lua       auto brackets
    alpha.lua           dashboard
    oil.lua             file manager
    trouble.lua         diagnostics browser
    neogit.lua          git UI
    harpoon.lua         file navigation
    project.lua         auto-cd + project history
    debug.lua           DAP
    misc.lua            sleuth, eunuch, cursorline, boole,
                        todo-comments, persistence, undotree,
                        indent-blankline, rainbow-delimiters,
                        actions-preview, lspimport, venv-selector
```

## Keymaps

| Key | Action |
|-----|--------|
| `<Space>` | Leader |
| `<leader>sf` | Search files |
| `<leader>sg` | Search grep |
| `<leader>sb` | Search buffers |
| `<leader>sp` | Search projects |
| `<leader>sh` | Search help |
| `<leader>sn` | Search neovim config |
| `<leader>o` | Oil file manager |
| `<leader>g` | Neogit |
| `<leader>ca` | Code actions |
| `<leader>cf` | Format buffer |
| `<leader>cr` | Rename symbol |
| `<leader>ci` | Import |
| `<leader>tt` | Trouble diagnostics |
| `<leader>u` | Undo tree |
| `<leader>ha` | Harpoon add |
| `<leader>hh` | Harpoon menu |
| `gd` | Go to definition |
| `gR` | Go to references |
| `K` | Hover docs |
| `<F5>` | Debug continue |
| `<F7>` | Debug UI toggle |

## LSP servers

Configured: `clangd`, `gopls`, `pyright`, `lua_ls`. Install more via `:Mason`.

## Notes

- `lualine` replaced with `mini.statusline` (already had mini.nvim)
- `project.nvim` uses [DrKJeff16 fork](https://github.com/DrKJeff16/project.nvim) (actively maintained)
- Removed: vimtex, neorg, nvim-repl, rooter, copilot, kitty-navigator, neodev
