-- [[ Setting options ]]
-- See `:help vim.opt`

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.swapfile = false
vim.opt.conceallevel = 2
vim.opt.confirm = true

-- Sync clipboard with OS
vim.schedule(function() vim.opt.clipboard = "unnamedplus" end)

-- Diagnostic config
vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
  float = { border = "rounded", source = "if_many" },
})

-- Auto-cd to project root (git-based, replaces project.nvim)
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("auto-cd", { clear = true }),
  callback = function()
    if vim.bo.buftype ~= "" then return end
    local file = vim.api.nvim_buf_get_name(0)
    if file == "" then return end
    local dir = vim.fn.fnamemodify(file, ":h")
    while dir ~= "/" and dir ~= "." do
      if vim.fn.isdirectory(dir .. "/.git") == 1 then
        if vim.fn.getcwd() ~= dir then vim.cmd("cd " .. vim.fn.fnameescape(dir)) end
        return
      end
      dir = vim.fn.fnamemodify(dir, ":h")
    end
  end,
})

-- Transparency
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
    vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
    vim.cmd("highlight signcolumn guibg=NONE ctermbg=NONE")
    vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
    vim.cmd("highlight CursorLineNr guibg=NONE ctermbg=NONE")
    vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
    vim.cmd("highlight Comment cterm=italic")
    vim.cmd("set formatoptions-=cro")
  end,
})
