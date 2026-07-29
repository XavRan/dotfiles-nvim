# dotfiles-nvim

Neovim config based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), simplified and modernized.

## Requirements

- Neovim >= 0.10
- A Nerd Font
- `make` (for telescope-fzf-native, LuaSnip)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for telescope live grep)

## Install

### Linux / macOS

```bash
git clone https://github.com/XavRan/dotfiles-nvim.git ~/.config/nvim
nvim
```

### Windows (PowerShell)

```powershell
# Fresh install
git clone https://github.com/XavRan/dotfiles-nvim.git $env:LOCALAPPDATA\nvim

# Or update existing
cd $env:LOCALAPPDATA\nvim
git pull

nvim
```

Lazy.nvim auto-installs on first launch. Run `:Mason` to install LSP servers and tools.

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

## Plugins

### Core

| Plugin | Description |
|--------|-------------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [onedark.nvim](https://github.com/navarasu/onedark.nvim) | Colorscheme |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap discovery popup |
| [mini.nvim](https://github.com/echasnovski/mini.nvim) | Statusline, textobjects, surround, move |

### Editing

| Plugin | Description |
|--------|-------------|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting, indentation |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Text objects (af/if/ac/ic) |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto-close brackets/quotes |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Pre-made snippets |
| [boole.nvim](https://github.com/nat-418/boole.nvim) | Toggle booleans/dates with `<C-a>`/`<C-x>` |
| [vim-sleuth](https://github.com/tpope/vim-sleuth) | Auto-detect indent settings |
| [vim-eunuch](https://github.com/tpope/vim-eunuch) | File operations (:Mkdir, :Move, :Chmod) |

### LSP & Completion

| Plugin | Description |
|--------|-------------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/tool installer |
| [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) | Mason-LSP bridge |
| [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Auto-install tools |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | LSP status notifications |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion engine |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | LSP completion source |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | Path completion source |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | Snippet completion source |
| [lspkind-nvim](https://github.com/onsails/lspkind-nvim) | Completion icons |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatting |
| [actions-preview.nvim](https://github.com/aznhe21/actions-preview.nvim) | Code action preview |
| [nvim-lspimport](https://github.com/stevanmilic/nvim-lspimport) | Auto-import missing symbols |

### Navigation & Search

| Plugin | Description |
|--------|-------------|
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | FZF sorter for telescope |
| [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim) | UI select replacement |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File manager (edit directories like buffers) |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Quick file switching |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard/greeter |
| [project.nvim](https://github.com/DrKJeff16/project.nvim) | Auto-cd to project root + history |
| [persistence.nvim](https://github.com/folke/persistence.nvim) | Session restore |

### Git

| Plugin | Description |
|--------|-------------|
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git signs in gutter |
| [neogit](https://github.com/NeogitOrg/neogit) | Magit-style git UI |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Diff viewer (neogit dep) |

### Diagnostics & Debug

| Plugin | Description |
|--------|-------------|
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics browser |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODO/FIXME/NOTE |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug Adapter Protocol |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | DAP UI |
| [nvim-dap-go](https://github.com/leoluz/nvim-dap-go) | Go debugger (delve) |
| [mason-nvim-dap](https://github.com/jay-babu/mason-nvim-dap.nvim) | Auto-install debuggers |

### Visual

| Plugin | Description |
|--------|-------------|
| [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |
| [rainbow-delimiters](https://github.com/HiPhish/rainbow-delimiters.nvim) | Rainbow brackets |
| [nvim-cursorline](https://github.com/yamatsum/nvim-cursorline) | Cursorline highlights |
| [undotree](https://github.com/mbbill/undotree) | Visual undo history |

### Python

| Plugin | Description |
|--------|-------------|
| [venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim) | Python venv selector |

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
