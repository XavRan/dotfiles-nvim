-- Treesitter (modern API, branch main)
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local parsers = {
      "bash", "c", "diff", "html", "lua", "luadoc",
      "markdown", "markdown_inline", "query", "vim", "vimdoc",
    }
    require("nvim-treesitter").install(parsers)

    local available = require("nvim-treesitter").get_available()
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        local lang = vim.treesitter.language.get_lang(args.match)
        if not lang then return end
        local installed = require("nvim-treesitter").get_installed("parsers")
        if vim.tbl_contains(installed, lang) then
          vim.treesitter.start(args.buf, lang)
        elseif vim.tbl_contains(available, lang) then
          require("nvim-treesitter").install(lang):await(function()
            vim.treesitter.start(args.buf, lang)
          end)
        end
      end,
    })
  end,
}
